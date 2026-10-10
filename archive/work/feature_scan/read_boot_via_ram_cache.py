"""Bounded volatile RAM redirection, boot-byte read, restore, and service exit.

No nonvolatile write opcode, storage write, or firmware update is implemented.
The only data-to-camera operation is F033 to two fixed RAM ranges, whose
original bytes are backed up first. The executable ROM handler is unmodified.
"""
import ctypes as C
import datetime
import hashlib
import json
import struct
import wpd_readonly_probe as w
from try_service_ram_read import params, response_status, command_no_data, successful, diagnostic_read

CACHE = 0xc188bc38
STAGING = 0xc2b2b608
TARGET = 0x10000088
OUT = w.ROOT / 'work/feature_scan/boot_cache_read_live.json'
BOOT_OUT = w.ROOT / 'work/feature_scan/boot_auth_10000088.bin'
ALLOWED_READS = {(STAGING, 52), (STAGING, 28), (CACHE, 12), (TARGET, 8)}
report = {}


def checkpoint(phase):
    report['phase'] = phase
    OUT.write_text(json.dumps(report, indent=2, ensure_ascii=False), encoding='utf-8')


def send(dev, command, configure, read_access=False):
    assert command in (13, 14, 15, 16, 17)
    v = w.values()
    v.SetGuidValue(w.key(w.COMMON, 1001), w.GUID(w.MTP))
    v.SetUnsignedIntegerValue(w.key(w.COMMON, 1002), command)
    if read_access:
        v.SetUnsignedIntegerValue(w.key(w.API, 3), 1)
    configure(v)
    result = dev.SendCommand(0, v).QueryInterface(w.T.IPortableDeviceValues)
    return result, response_status(result)


def read_memory(dev, address, length):
    assert (address, length) in ALLOWED_READS
    record = {'opcode': '0x94ff', 'subcommand': '0xf032',
              'address': hex(address), 'length': length, 'steps': []}
    report['operations'].append(record)
    context = None
    data = bytearray()
    try:
        def begin(v):
            v.SetUnsignedIntegerValue(w.key(w.MTP, 1001), 0x94ff)
            v.SetIPortableDevicePropVariantCollectionValue(w.key(w.MTP, 1002), params([0xf032,address,length,0,0]))
        r, status = send(dev, 13, begin, True)
        record['steps'].append({'wpd_command': 13, **status})
        if status['hresult'] != '0x0':
            raise RuntimeError('Read setup failed')
        context = r.GetStringValue(w.key(w.MTP, 1006))
        size = r.GetUnsignedLargeIntegerValue(w.key(w.MTP, 1007))
        record['reported_size'] = size
        if size != length:
            raise RuntimeError(f'Read size {size} does not match {length}')
        while len(data) < length:
            wanted = length - len(data)
            def read(v):
                v.SetStringValue(w.key(w.MTP, 1006), context)
                v.SetUnsignedIntegerValue(w.key(w.MTP, 1008), wanted)
                v.SetBufferValue(w.key(w.MTP, 1012), (C.c_ubyte*wanted)(), wanted)
            r, status = send(dev, 15, read, True)
            record['steps'].append({'wpd_command': 15, **status})
            if status['hresult'] != '0x0':
                raise RuntimeError('Read chunk failed')
            n = r.GetUnsignedIntegerValue(w.key(w.MTP, 1009))
            buf, buf_size = r.GetBufferValue(w.key(w.MTP, 1012))
            try:
                if not 0 < n <= min(wanted, buf_size):
                    raise RuntimeError('Invalid read length')
                data.extend(C.string_at(buf, n))
            finally:
                free = C.windll.ole32.CoTaskMemFree
                free.argtypes = [C.c_void_p]
                free.restype = None
                free(buf)
        record['data_hex'] = data.hex()
    finally:
        if context is not None:
            _, status = send(dev, 17, lambda v: v.SetStringValue(w.key(w.MTP, 1006), context), True)
            record['steps'].append({'wpd_command': 17, **status})
        checkpoint(report['phase'])
    if len(data) != length or not successful(record['steps'][-1]):
        raise RuntimeError('Camera rejected memory read')
    return bytes(data)


def write_ram(dev, address, data, expected_original, replacement):
    assert address in (STAGING, CACHE)
    assert len(data) == (28 if address == STAGING else 4)
    assert data in (expected_original, replacement)
    assert len(expected_original) == len(replacement) == len(data)
    record = {'opcode': '0x94fe', 'subcommand': '0xf033',
              'address': hex(address), 'length': len(data), 'data_hex': data.hex(), 'steps': []}
    report['operations'].append(record)
    context = None
    sent = 0
    try:
        def begin(v):
            v.SetUnsignedIntegerValue(w.key(w.MTP, 1001), 0x94fe)
            v.SetIPortableDevicePropVariantCollectionValue(w.key(w.MTP, 1002), params([0xf033,address,len(data),0,0]))
            v.SetUnsignedLargeIntegerValue(w.key(w.MTP, 1007), len(data))
        r, status = send(dev, 14, begin)
        record['steps'].append({'wpd_command': 14, **status})
        if status['hresult'] != '0x0':
            raise RuntimeError('RAM write setup failed')
        context = r.GetStringValue(w.key(w.MTP, 1006))
        def write(v):
            v.SetStringValue(w.key(w.MTP, 1006), context)
            v.SetUnsignedIntegerValue(w.key(w.MTP, 1010), len(data))
            v.SetBufferValue(w.key(w.MTP, 1012), (C.c_ubyte*len(data)).from_buffer_copy(data), len(data))
        r, status = send(dev, 16, write)
        record['steps'].append({'wpd_command': 16, **status})
        if status['hresult'] != '0x0':
            raise RuntimeError('RAM write transfer failed')
        sent = r.GetUnsignedIntegerValue(w.key(w.MTP, 1011))
        record['bytes_sent'] = sent
        if sent != len(data):
            raise RuntimeError('Partial RAM write transfer')
    finally:
        if context is not None:
            _, status = send(dev, 17, lambda v: v.SetStringValue(w.key(w.MTP, 1006), context))
            record['steps'].append({'wpd_command': 17, **status})
        checkpoint(report['phase'])
    if sent != len(data) or not successful(record['steps'][-1]):
        raise RuntimeError('Camera rejected RAM write')
    response_params = record['steps'][-1]['ptp_response_params']
    if len(response_params) < 2 or int(response_params[1], 16) != len(data):
        raise RuntimeError('Unexpected RAM write acknowledgment length')


def main():
    global report
    if OUT.exists() or BOOT_OUT.exists():
        raise RuntimeError('Existing live attempt or boot bytes; inspect results before a new attempt')
    proof = json.loads((w.ROOT/'work/feature_scan/cached_read_route_emulation.json').read_text())
    assert proof['staging_and_cache_restored'] and proof['original_f032_handler_read_synthetic_boot_value']
    module = (w.ROOT/'outputs/Z6_2_0170_analysis/modules/eg1850_mas_01700.bin').read_bytes()
    assert hashlib.sha256(module).hexdigest() == proof['module_sha256']
    row = next(a for a in range(0x119f496c,0x119f5c90,28) if struct.unpack_from('<I',module,a-0x10020000)[0] == 0xf032)
    values = list(struct.unpack_from('<7I',module,row-0x10020000))
    assert values == [0xf032,1,0,0,0x104b5387,0x104b5489,0x104b5313]
    values[4] = 0
    temporary_row = struct.pack('<7I',*values)
    report = {'timestamp': datetime.datetime.now().astimezone().isoformat(), 'operations': [],
              'firmware_written': False, 'camera_files_written': False,
              'persistent_settings_written': False, 'volatile_ram_mutation_planned': True,
              'original_f032_row': hex(row), 'read_bytes_verified_against_official_digest': False}
    dev = w.client.CreateObject(w.A.PortableDevice, interface=w.A.IPortableDevice)
    info = w.values()
    info.SetStringValue(w.key(w.CLIENT,2),'Z6 II bounded volatile boot read')
    info.SetUnsignedIntegerValue(w.key(w.CLIENT,3),1)
    info.SetUnsignedIntegerValue(w.key(w.CLIENT,9),0xc0000000)
    dev.Open(w.enumerate_nikon(),info)
    entry_attempted = False
    stage_attempted = False
    cache_attempted = False
    original_stage = original_cache = None
    try:
        report['identity_before'] = w.read_identity(dev)
        assert report['identity_before']['firmware_version'] == 'V1.70'
        entry_attempted = True
        checkpoint('entering_service')
        report['enter'] = command_no_data(dev,0xf001)
        if not successful(report['enter']):
            raise RuntimeError('Service entry rejected')
        checkpoint('backing_up_ram')
        original_stage = read_memory(dev,STAGING,52)
        original_cache = read_memory(dev,CACHE,12)
        assert original_stage == bytes(52), 'Authentication state is active; do not reuse it'
        assert struct.unpack('<3I',original_cache) == (row,0x1047c205,1)
        report['backup'] = {'stage_hex':original_stage.hex(),'cache_hex':original_cache.hex()}
        checkpoint('writing_temporary_row')
        stage_attempted = True
        write_ram(dev,STAGING,temporary_row,original_stage[:28],temporary_row)
        assert read_memory(dev,STAGING,28) == temporary_row
        checkpoint('redirecting_read_cache')
        cache_attempted = True
        write_ram(dev,CACHE,struct.pack('<I',STAGING),original_cache[:4],struct.pack('<I',STAGING))
        # Nothing may send a different diagnostic subcommand between this
        # pointer write and the F032 read below.
        checkpoint('reading_boot_bytes')
        boot = read_memory(dev,TARGET,8)
        BOOT_OUT.write_bytes(boot)
        report['boot_bytes_saved'] = str(BOOT_OUT)
        report['boot_bytes_sha256'] = hashlib.sha256(boot).hexdigest()
    except Exception as exc:
        report['exception'] = repr(exc)
    finally:
        if stage_attempted:
            checkpoint('restoring_ram')
            try:
                # F033 loads its genuine ROM table row, eliminating the
                # temporary F032 dispatch before its storage is restored.
                write_ram(dev,STAGING,original_stage[:28],original_stage[:28],temporary_row)
                if cache_attempted:
                    write_ram(dev,CACHE,original_cache[:4],original_cache[:4],struct.pack('<I',STAGING))
                restored_stage = read_memory(dev,STAGING,52)
                restored_cache = read_memory(dev,CACHE,12)
                report['ram_restored'] = restored_stage == original_stage and restored_cache == original_cache
                if not report['ram_restored']:
                    raise RuntimeError('RAM restoration comparison failed')
            except Exception as exc:
                report['restore_exception'] = repr(exc)
        if entry_attempted:
            checkpoint('exiting_service')
            report['exit'] = command_no_data(dev,0xf002)
            report['service_exit_accepted'] = successful(report['exit'])
            report['post_exit_probe'] = diagnostic_read(dev,[0xf003,1,0,0,0],128)
        try:
            report['identity_after'] = w.read_identity(dev)
        except Exception as exc:
            report['identity_after_exception'] = repr(exc)
        dev.Close()
        checkpoint('closed')
    print(json.dumps({k:v for k,v in report.items() if k not in ('operations','backup')},indent=2,ensure_ascii=False))


if __name__ == '__main__':
    main()
