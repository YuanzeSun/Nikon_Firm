"""Original-instruction proof of a reversible diagnostic cache redirection.

Offline only. Uses a synthetic boot-region value and stubs USB transport.
It does not establish live permission to write RAM or imply hardware testing.
"""
import hashlib
import json
import struct
from verify_outer_algorithm import u, call, word, ROOT, B, SCRATCH
from unicorn import UC_HOOK_CODE
from unicorn.arm_const import UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3, UC_ARM_REG_SP, UC_ARM_REG_PC, UC_ARM_REG_LR

CACHE = 0xc188bc38
STAGING = 0xc2b2b608
TARGET = 0x10000088
PACKET = SCRATCH + 0x8000
TRANSFER = SCRATCH + 0x9000
USB_PACKET = SCRATCH + 0xa000
USB_STATE = SCRATCH + 0xb000
synthetic = bytes.fromhex('0123456789abcdef')
responses = []
reads = []


def read32(a):
    return struct.unpack('<I', u.mem_read(a, 4))[0]


def write32(a, value):
    u.mem_write(a, struct.pack('<I', value))


def transport(uc, addr, size, data):
    r = [uc.reg_read(reg) for reg in (UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3)]
    if addr == 0x1063f598:
        result = TRANSFER
    elif addr == 0x1063f5ac:
        result = 0x400
    elif addr == 0x1063f710:
        responses.append({'code': hex(r[1]), 'params': [hex(read32(r[3]+4*i)) for i in range(r[2])]})
        result = 1
    elif addr == 0x1063f682:
        assert r[1] == TARGET and r[2] == 8, r
        reads.append({'address': hex(r[1]), 'length': r[2], 'data': bytes(uc.mem_read(r[1], r[2])).hex()})
        result = 1
    elif addr == 0x1063f592:
        result = USB_PACKET
    elif addr == 0x1063f5a6:
        result = 0x400
    elif addr == 0x1063f66e:
        result = USB_STATE
    elif addr == 0x1063f672:
        assert r[1] == 20 and r[2] == USB_PACKET
        result = 1
    elif addr == 0x1063f66a:
        assert r[0] == USB_STATE
        assert read32(USB_STATE+12) == 20
        assert read32(USB_STATE+16) == USB_PACKET
        content = bytes(uc.mem_read(USB_PACKET+12, 8))
        assert content == synthetic
        reads.append({'address': hex(TARGET), 'length': 8, 'data': content.hex()})
        result = 1
    elif addr in (0x104c3b74, 0x1063f80c, 0x1063f626):
        result = 1
    else:
        raise AssertionError(hex(addr))
    uc.reg_write(UC_ARM_REG_R0, result)
    uc.reg_write(UC_ARM_REG_PC, uc.reg_read(UC_ARM_REG_LR))


def packet(opcode, subcommand, address=0, length=0):
    u.mem_write(PACKET, struct.pack('<IHH6I', 32, 1, opcode, 1, subcommand, address, length, 0, 0))


def execute_ram_write(address, data):
    assert address in (STAGING, CACHE)
    assert len(data) == (28 if address == STAGING else 4)
    packet(0x94fe, 0xf033, address, len(data))
    assert call(0x104c966c, PACKET) == 1
    assert read32(CACHE) == row_addresses[0xf033]
    u.mem_write(TRANSFER, data)
    assert call(0x104c96f4, PACKET) == 1
    assert responses[-1]['code'] == '0x2001'
    assert responses[-1]['params'][:2] == ['0x2001', hex(len(data))]
    assert bytes(u.mem_read(address, len(data))) == data


def main():
    global row_addresses
    row_addresses = {}
    for a in range(0x119f496c, 0x119f5c90, 28):
        command = word(a)
        row_addresses[command] = a
    assert word(0x104c983c) == CACHE
    original_row = bytes(u.mem_read(row_addresses[0xf032], 28))
    row = list(struct.unpack('<7I', original_row))
    assert row == [0xf032, 1, 0, 0, 0x104b5387, 0x104b5489, 0x104b5313]
    row[4] = 0  # Only the read-range prevalidator is omitted in the RAM copy.
    replacement = struct.pack('<7I', *row)
    u.mem_map(0x10000000, 0x20000)
    u.mem_write(TARGET, synthetic)
    write32(CACHE, row_addresses[0xf003])
    write32(CACHE+4, 0x1047c205)
    write32(CACHE+8, 1)
    before = bytes(u.mem_read(STAGING, 28))
    neighbors_before = bytes(u.mem_read(CACHE+4, 24))
    transport_addresses = (0x1063f598, 0x1063f5ac, 0x1063f710, 0x1063f682,
                           0x1063f592, 0x1063f5a6, 0x1063f66e, 0x1063f672,
                           0x1063f66a, 0x104c3b74, 0x1063f80c, 0x1063f626)
    for address in transport_addresses:
        u.hook_add(UC_HOOK_CODE, transport, begin=address, end=address)
    assert call(0x104b5314, TARGET, TARGET+7) == 0
    assert call(0x104b5314, STAGING, STAGING+27) == 1
    assert call(0x104b5314, CACHE, CACHE+3) == 1
    # Ordinary F032 is rejected by original instructions before USB data.
    packet(0x94ff, 0xf032, TARGET, 8)
    assert call(0x104c966c, PACKET) == 0
    assert not reads and responses[-1]['params'][0] == '0x201d'
    # Two small writes affect only RAM, using the original F033 handler.
    execute_ram_write(STAGING, replacement)
    execute_ram_write(CACHE, struct.pack('<I', STAGING))
    # Both precheck and execution consult the cached row and preserve it.
    packet(0x94ff, 0xf032, TARGET, 8)
    assert call(0x104c966c, PACKET) == 1
    assert read32(CACHE) == STAGING
    descriptor_route = call(0x103c81dc, TARGET)
    assert descriptor_route == 1  # Zero-initialized synthetic region metadata.
    assert call(0x104c96f4, PACKET) == 1
    assert reads == [{'address': hex(TARGET), 'length': 8, 'data': synthetic.hex()}]
    assert responses[-1]['params'][0] == '0x2001'
    # A different subcommand reloads its original ROM row before restoration.
    execute_ram_write(STAGING, before)
    assert read32(CACHE) == row_addresses[0xf033]
    execute_ram_write(CACHE, struct.pack('<I', row_addresses[0xf003]))
    assert read32(CACHE) == row_addresses[0xf003]
    assert bytes(u.mem_read(STAGING, 28)) == before
    assert bytes(u.mem_read(CACHE+4, 24)) == neighbors_before
    assert bytes(u.mem_read(TARGET, 8)) == synthetic
    report = {
        'offline_only': True, 'synthetic_boot_bytes_only': True,
        'module_sha256': hashlib.sha256(B).hexdigest(),
        'original_rom_read_rejected': True,
        'original_f033_ram_write_executed': True,
        'temporary_row_address': hex(STAGING), 'temporary_row_bytes': 28,
        'cache_pointer_address': hex(CACHE), 'cache_pointer_bytes': 4,
        'only_replacement_row_difference': 'word +0x10: 0x104b5387 -> 0',
        'original_f032_handler_read_synthetic_boot_value': True,
        'memory_descriptor_route': descriptor_route,
        'staging_and_cache_restored': True, 'adjacent_service_state_unchanged': True,
        'boot_bytes_unchanged': True,
        'stubbed_usb_calls': [hex(v) for v in transport_addresses],
        'rom_to_usb_buffer_copy_executed_by_original_instructions': True,
        'live_operation_performed': False,
        'limits': ['Full USB dispatcher and concurrency were not emulated.',
                   'Live staging bytes and cache pointers must be backed up and validated before any RAM change.',
                   'All modifications must be restored before service exit, including after a failed read.'],
    }
    (ROOT/'work/feature_scan/cached_read_route_emulation.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    main()
