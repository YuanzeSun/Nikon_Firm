"""Try only the firmware-confirmed F003 model/version read operations.

The real PTP opcode is 94FF; F003 is the first of five PTP parameters.

Does not enter service mode or send a write, capture, reset or update operation.
Only selectors 1 (model), 4 (main version) and 6 (boot version), plus the public
90CA GetVendorPropCodes read used as a transport control, are allowed.
"""
import ctypes as C
import datetime
import json
import struct
import wpd_readonly_probe as w


def request(dev, command_id, configure):
    assert command_id in (12, 13, 15, 17)
    v = w.values()
    v.SetGuidValue(w.key(w.COMMON, 1001), w.GUID(w.MTP))
    v.SetUnsignedIntegerValue(w.key(w.COMMON, 1002), command_id)
    v.SetUnsignedIntegerValue(w.key(w.API, 3), 1)
    configure(v)
    r = dev.SendCommand(0, v).QueryInterface(w.T.IPortableDeviceValues)
    status = {'hresult': hex(r.GetErrorValue(w.key(w.COMMON, 1003)) & 0xffffffff)}
    try:
        status['ptp_response'] = hex(r.GetUnsignedIntegerValue(w.key(w.MTP, 1003)))
        coll = r.GetIPortableDevicePropVariantCollectionValue(w.key(w.MTP, 1004))
        n = C.c_ulong()
        coll.GetCount(C.byref(n))
        assert n.value <= 5
        result_params = []
        for i in range(n.value):
            pv = w.T.tag_inner_PROPVARIANT()
            coll.GetAt(i, C.byref(pv))
            assert pv.vt == 19
            result_params.append(hex(getattr(pv, pv._fields_[-1][0]).ulVal))
        status['ptp_response_params'] = result_params
    except w.COMError:
        pass
    return r, status


def read_version(dev, selector):
    assert selector in (None, 1, 4, 6)
    # None is the publicly documented, read-only GetVendorPropCodes control.
    opcode = 0x90ca if selector is None else 0x94ff
    op_params = [] if selector is None else [0xf003, selector, 0, 0, 0]
    record = {'opcode': hex(opcode), 'parameters': op_params, 'steps': []}
    context = None
    data = bytearray()
    try:
        def begin(v):
            params = w.client.CreateObject(w.T.PortableDevicePropVariantCollection,
                                          interface=w.T.IPortableDevicePropVariantCollection)
            for value in op_params:
                pv = w.T.tag_inner_PROPVARIANT()
                pv.vt = 19  # VT_UI4
                getattr(pv, pv._fields_[-1][0]).ulVal = value
                params.Add(C.byref(pv))
            v.SetUnsignedIntegerValue(w.key(w.MTP, 1001), opcode)
            v.SetIPortableDevicePropVariantCollectionValue(w.key(w.MTP, 1002), params)

        r, status = request(dev, 13, begin)
        record['steps'].append({'command': 'EXECUTE_READ', **status})
        if status['hresult'] != '0x0':
            return record
        context = r.GetStringValue(w.key(w.MTP, 1006))
        size = r.GetUnsignedLargeIntegerValue(w.key(w.MTP, 1007))
        record['reported_size'] = size
        if size == 0:
            record['data_hex'] = ''
            return record  # END_DATA_TRANSFER collects the actual camera response.
        if (selector is not None and size != 128) or size > 65536:
            raise RuntimeError('Unexpected diagnostic data length: ' + str(size))
        while len(data) < size:
            wanted = size - len(data)
            def read(v):
                v.SetStringValue(w.key(w.MTP, 1006), context)
                v.SetUnsignedIntegerValue(w.key(w.MTP, 1008), wanted)
                buf = (C.c_ubyte * wanted)()
                v.SetBufferValue(w.key(w.MTP, 1012), buf, wanted)
            r, status = request(dev, 15, read)
            record['steps'].append({'command': 'READ_DATA', **status})
            if status['hresult'] != '0x0':
                raise RuntimeError('Read failed')
            n = r.GetUnsignedIntegerValue(w.key(w.MTP, 1009))
            buf, buf_size = r.GetBufferValue(w.key(w.MTP, 1012))
            try:
                if not 0 < n <= min(wanted, buf_size):
                    raise RuntimeError('Invalid returned read length')
                data.extend(C.string_at(buf, n))
            finally:
                free = C.windll.ole32.CoTaskMemFree
                free.argtypes = [C.c_void_p]
                free.restype = None
                free(buf)
        record['data_hex'] = data.hex()
        if selector is None:
            count = struct.unpack_from('<I', data)[0]
            if len(data) != 4 + count * 2:
                raise RuntimeError('Unexpected vendor property list structure')
            record['vendor_property_codes'] = [hex(x) for x in struct.unpack_from('<' + 'H' * count, data, 4)]
        else:
            record['text'] = bytes(data).split(b'\0', 1)[0].decode('ascii', errors='replace')
    except Exception as e:
        record['error'] = str(e)
    finally:
        if context is not None:
            try:
                _, status = request(dev, 17, lambda v: v.SetStringValue(w.key(w.MTP, 1006), context))
                record['steps'].append({'command': 'END_DATA_TRANSFER', **status})
            except Exception as e:
                record['end_transfer_error'] = str(e)
    return record


def main():
    report = {'timestamp': datetime.datetime.now().astimezone().isoformat(),
              'access': 'GENERIC_READ; FILE_READ_ACCESS IOCTL',
              'service_mode_entered': False, 'camera_settings_written': False,
              'camera_files_written': False, 'firmware_written': False, 'reads': []}
    dev = w.open_device()
    try:
        report['identity_before'] = w.read_identity(dev)
        report['reads'].append(read_version(dev, None))
        first = read_version(dev, 1)
        report['reads'].append(first)
        # Only continue if this exact diagnostic read is supported and successful.
        if first.get('text') == 'Z_6_2' and first['steps'][-1].get('ptp_response') == '0x2001':
            for selector in (4, 6):
                report['reads'].append(read_version(dev, selector))
        report['identity_after'] = w.read_identity(dev)
    finally:
        dev.Close()
    out = w.ROOT / 'work/feature_scan/connected_normal_vs_service_probe.json'
    out.write_text(json.dumps(report, indent=2, ensure_ascii=False), encoding='utf-8')
    print(json.dumps(report, indent=2, ensure_ascii=False))


if __name__ == '__main__':
    main()
