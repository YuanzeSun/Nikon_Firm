"""Explicitly authorized service entry, bounded read, and unconditional exit.

Firmware table at 0x119f2784 identifies 94FD as the no-data wrapper;
94FE has an incoming data phase and is NOT used. 94FF reads data.
All diagnostic operations require five PTP parameters including the subcommand.
Only F001, F002, F003 (model selector), and F032 (one eight-byte RAM range)
are allowed. No write-data command, file write, or firmware update is available.
"""
import ctypes as C
import datetime
import json
from pathlib import Path
import struct
import wpd_readonly_probe as w
from wpd_diagnostic_read import request

STATE_COPY = 0xC2B2B614
OUT = w.ROOT / 'work/feature_scan/service_ram_read_corrected.json'


def params(values):
    coll = w.client.CreateObject(w.T.PortableDevicePropVariantCollection,
                                 interface=w.T.IPortableDevicePropVariantCollection)
    for value in values:
        pv = w.T.tag_inner_PROPVARIANT()
        pv.vt = 19
        getattr(pv, pv._fields_[-1][0]).ulVal = value
        coll.Add(C.byref(pv))
    return coll


def assert_original_dispatch():
    b = (w.ROOT / 'outputs/Z6_2_0170_analysis/modules/eg1850_mas_01700.bin').read_bytes()
    def row(addr):
        return struct.unpack_from('<7I', b, addr - 0x10020000)
    assert row(0x119F2784) == (0x94fd, 0, 0, 0, 0x10776d8d, 0x10776d93, 0x10776d8b)
    assert row(0x119F27A0) == (0x94fe, 0, 0, 0x10776d99, 0x10776da9, 0x10776daf, 0x10776d8b)
    assert row(0x119F27BC) == (0x94ff, 1, 0, 0, 0x10776db5, 0x10776dbb, 0x10776d8b)
    assert row(0x119F496C) == (0xf001, 0, 0, 0, 0, 0x1047c279, 0x1047c20b)
    assert row(0x119F4988) == (0xf002, 0, 0, 0, 0, 0x1047c393, 0x1047c20b)


def response_status(r):
    status = {'hresult': hex(r.GetErrorValue(w.key(w.COMMON, 1003)) & 0xffffffff)}
    try:
        status['ptp_response'] = hex(r.GetUnsignedIntegerValue(w.key(w.MTP, 1003)))
        coll = r.GetIPortableDevicePropVariantCollectionValue(w.key(w.MTP, 1004))
        n = C.c_ulong()
        coll.GetCount(C.byref(n))
        assert n.value <= 5
        values = []
        for i in range(n.value):
            pv = w.T.tag_inner_PROPVARIANT()
            coll.GetAt(i, C.byref(pv))
            assert pv.vt == 19
            values.append(hex(getattr(pv, pv._fields_[-1][0]).ulVal))
        status['ptp_response_params'] = values
    except w.COMError:
        pass
    return status


def command_no_data(dev, subcommand):
    assert subcommand in (0xF001, 0xF002)
    op_params = [subcommand, 0, 0, 0, 0]
    result = {'opcode': '0x94fd', 'parameters': [hex(x) for x in op_params]}
    try:
        v = w.values()
        v.SetGuidValue(w.key(w.COMMON, 1001), w.GUID(w.MTP))
        v.SetUnsignedIntegerValue(w.key(w.COMMON, 1002), 12)
        # WPD's no-data transport requires the default read/write IOCTL.
        v.SetUnsignedIntegerValue(w.key(w.MTP, 1001), 0x94FD)
        v.SetIPortableDevicePropVariantCollectionValue(w.key(w.MTP, 1002), params(op_params))
        r = dev.SendCommand(0, v).QueryInterface(w.T.IPortableDeviceValues)
        result.update(response_status(r))
    except Exception as exc:
        result['exception'] = str(exc)
    return result


def diagnostic_read(dev, op_params, expected_size):
    assert op_params in ([0xF003, 1, 0, 0, 0], [0xF032, STATE_COPY, 8, 0, 0])
    assert expected_size == (128 if op_params[0] == 0xF003 else 8)
    record = {'opcode': '0x94ff', 'parameters': [hex(x) for x in op_params], 'steps': []}
    context = None
    data = bytearray()
    try:
        def configure(v):
            v.SetUnsignedIntegerValue(w.key(w.MTP, 1001), 0x94FF)
            v.SetIPortableDevicePropVariantCollectionValue(w.key(w.MTP, 1002), params(op_params))
        r, status = request(dev, 13, configure)
        record['steps'].append({'command': 'EXECUTE_READ', **status})
        if status['hresult'] != '0x0':
            return record
        context = r.GetStringValue(w.key(w.MTP, 1006))
        size = r.GetUnsignedLargeIntegerValue(w.key(w.MTP, 1007))
        record['reported_size'] = size
        if size == 0:
            record.update(data_hex='', read_size=0)
            return record
        if size != expected_size:
            record['error'] = f'Unexpected size {size}; no data read'
            return record
        while len(data) < size:
            wanted = size - len(data)
            def configure(v):
                v.SetStringValue(w.key(w.MTP, 1006), context)
                v.SetUnsignedIntegerValue(w.key(w.MTP, 1008), wanted)
                buf = (C.c_ubyte * wanted)()
                v.SetBufferValue(w.key(w.MTP, 1012), buf, wanted)
            r, status = request(dev, 15, configure)
            record['steps'].append({'command': 'READ_DATA', **status})
            if status['hresult'] != '0x0':
                return record
            n = r.GetUnsignedIntegerValue(w.key(w.MTP, 1009))
            buf, buf_size = r.GetBufferValue(w.key(w.MTP, 1012))
            try:
                if not 0 < n <= min(wanted, buf_size):
                    raise RuntimeError(f'Invalid returned length {n}/{buf_size}')
                data.extend(C.string_at(buf, n))
            finally:
                free = C.windll.ole32.CoTaskMemFree
                free.argtypes = [C.c_void_p]
                free.restype = None
                free(buf)
        record.update(data_hex=data.hex(), read_size=len(data))
    except Exception as exc:
        record['exception'] = str(exc)
    finally:
        if context is not None:
            try:
                _, status = request(dev, 17, lambda v: v.SetStringValue(w.key(w.MTP, 1006), context))
                record['steps'].append({'command': 'END_DATA_TRANSFER', **status})
            except Exception as exc:
                record['end_transfer_exception'] = str(exc)
    return record


def successful(result):
    response_params = result.get('ptp_response_params', [])
    return (result.get('hresult') == '0x0' and result.get('ptp_response') == '0x2001'
            and bool(response_params) and response_params[0] == '0x2001')


def save(report):
    OUT.write_text(json.dumps(report, indent=2, ensure_ascii=False), encoding='utf-8')


def main():
    assert_original_dispatch()
    if OUT.exists():
        raise RuntimeError('Refusing automatic repeat of a recorded live service attempt')
    report = {'timestamp': datetime.datetime.now().astimezone().isoformat(),
              'entry_and_exit_opcode': '0x94fd', 'read_opcode': '0x94ff',
              'transport_handle': 'GENERIC_READ | GENERIC_WRITE',
              'camera_persistent_settings_written': False, 'camera_files_written': False,
              'firmware_written': False, 'flashable_package_created': False}
    identifier = w.enumerate_nikon()
    dev = w.client.CreateObject(w.A.PortableDevice, interface=w.A.IPortableDevice)
    info = w.values()
    info.SetStringValue(w.key(w.CLIENT, 2), 'Z6 II authorized bounded service read')
    info.SetUnsignedIntegerValue(w.key(w.CLIENT, 3), 1)
    info.SetUnsignedIntegerValue(w.key(w.CLIENT, 4), 0)
    info.SetUnsignedIntegerValue(w.key(w.CLIENT, 9), 0xC0000000)
    dev.Open(identifier, info)
    entry_attempted = False
    try:
        report['identity_before'] = w.read_identity(dev)
        assert report['identity_before']['firmware_version'] == 'V1.70'
        report['phase'] = 'sending_entry'
        save(report)
        entry_attempted = True
        report['enter'] = command_no_data(dev, 0xF001)
        report['service_entry_accepted'] = successful(report['enter'])
        save(report)
        if report['service_entry_accepted']:
            report['model_in_service'] = diagnostic_read(dev, [0xF003, 1, 0, 0, 0], 128)
            save(report)
            report['ram_read'] = diagnostic_read(dev, [0xF032, STATE_COPY, 8, 0, 0], 8)
            save(report)
    except Exception as exc:
        report['exception'] = str(exc)
    finally:
        # Cleanup is attempted even after an ambiguous entry response, since
        # the entry handler can partially transition before returning an error.
        if entry_attempted:
            report['phase'] = 'sending_exit'
            save(report)
            report['exit'] = command_no_data(dev, 0xF002)
            report['service_exit_accepted'] = successful(report['exit'])
            save(report)
            report['model_after_exit'] = diagnostic_read(dev, [0xF003, 1, 0, 0, 0], 128)
        try:
            report['identity_after'] = w.read_identity(dev)
        except Exception as exc:
            report['identity_after_exception'] = str(exc)
        dev.Close()
        report['phase'] = 'closed'
        report['authentication_bytes_verified'] = False
        save(report)
    print(json.dumps(report, indent=2, ensure_ascii=False))


if __name__ == '__main__':
    main()
