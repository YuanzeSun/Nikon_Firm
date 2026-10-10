"""Offline proof of a possible RAM source for the missing authentication bytes.

Executes original firmware instructions with synthetic inputs. No camera I/O,
no firmware package creation, and no claim that a live RAM read is possible.
"""
import hashlib
import json
from pathlib import Path
from fw_index import load
from verify_outer_algorithm import ROOT, B, u, call, word, SCRATCH


def main():
    state = word(0x103b151c)
    assert state == 0xc2b2b608
    mask = bytes.fromhex('e22b5d787c693ffe')
    source = bytes.fromhex('0011223344556677')
    transformed = bytes(a ^ b for a, b in zip(source, mask))
    message = b'Synthetic authentication state persistence check.'
    cases = []
    for valid in (True, False):
        digest = hashlib.sha1(message + transformed).digest() if valid else bytes(20)
        u.mem_write(SCRATCH + 0x2000, message + bytes(8))
        u.mem_write(SCRATCH + 0x3000, source)
        u.mem_write(SCRATCH + 0x4000, b'Z_6_2\0')
        u.mem_write(SCRATCH + 0x5000, digest)
        call(0x103b1120)
        assert bytes(u.mem_read(state, 0x34)) == bytes(0x34)
        call(0x103b1128, 0x1039ea3d)
        call(0x103b112e, SCRATCH + 0x2000, len(message))
        call(0x103b1136, SCRATCH + 0x5000)
        call(0x103b1142, SCRATCH + 0x3000, 0x44c, SCRATCH + 0x4000)
        before = bytes(u.mem_read(state + 12, 8))
        assert before == source
        result = call(0x103b2286)
        assert result == int(valid)
        after = bytes(u.mem_read(state + 12, 8))
        assert after == transformed
        recovered = bytes(a ^ b for a, b in zip(after, mask))
        assert recovered == source
        cases.append({'digest_valid': valid, 'authentication_result': result,
                      'ram_before_hex': before.hex(), 'ram_after_hex': after.hex(),
                      'source_recovered_from_ram_copy': True})
    ram_allowed = call(0x104b5314, state + 12, state + 19)
    rom_allowed = call(0x104b5314, 0x10000088, 0x1000008f)
    assert ram_allowed == 1 and rom_allowed == 0
    result = {
        'original_module_sha256': hashlib.sha256(B).hexdigest(),
        'actual_machine_code_executed': True,
        'synthetic_inputs_only': True,
        'camera_io': False,
        'state_address': hex(state), 'copy_address': hex(state + 12),
        'copy_length': 8, 'copy_is_transformed_after_authentication': True,
        'cases': cases,
        'guard_in_this_emulator': {'ram': ram_allowed, 'rom': rom_allowed},
        'emulation_limit': 'Full camera startup was not executed. Live configuration-region metadata and service-mode state were not captured; RAM guard success is not live-read proof.',
        'remaining_unknowns': [
            'How to populate the authentication state on the camera without initiating firmware writes',
            'Whether the copy survives the complete failure/cleanup/menu/USB sequence',
            'Whether temporary service mode and bounded RAM read are reliable on this body',
        ],
        'real_authentication_bytes_obtained': False,
        'flashable_package_created': False,
    }
    out = ROOT / 'outputs/Z6_2_0170_ram_auth_feasibility'
    out.mkdir(exist_ok=False)
    (out / 'verification.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    (out / Path(__file__).name).write_bytes(Path(__file__).read_bytes())
    funcs, _ = load()
    addresses = ['103b1120', '103b1142', '103b2286', '1039ea40', '103f7970',
                 '103f74ac', '104b5314', '104b5386', '104b5488']
    (out / 'evidence.c').write_text('\n'.join(funcs[a]['code'] for a in addresses), encoding='utf-8')
    print(json.dumps(result, indent=2))


if __name__ == '__main__':
    main()
