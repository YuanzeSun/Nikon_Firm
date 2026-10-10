"""Final offline risk review of the exact delivered RAW-only package.

Rechecks archived evidence and the delivered package. Executes only a bounded
capability getter in emulation. No camera, card, USB, or flash access.
"""
from pathlib import Path
import binascii
import hashlib
import json
import struct
import sys
import numpy as np

ROOT = Path(__file__).resolve().parents[2]
PACKAGE_DIR = ROOT / 'outputs/Z6_2_0170_RAW_only_candidate'
OUT = ROOT / 'outputs/Z6_2_0170_RAW_only_risk_review'
sys.path.insert(0, str(ROOT / 'work/python-packages'))
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB
from unicorn.arm_const import UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_SP, UC_ARM_REG_LR, UC_ARM_REG_PC

EXPECTED = 'f3e4fa07de6a8818d4bbf1ef65cb3ee5b7954bee8a353fd9b65ca7b7e4e9b11e'
ORIGINAL = '5a9640b4c07abe1ecbf5a52655cbec6b893bba045bb2a1a1d21055b9f8f9d06d'
BASE = 0x10020000
SCRATCH = 0x20000000
STOP = SCRATCH + 0x1000
CAPABILITY = 0xc20d2954


def sha(data):
    return hashlib.sha256(data).hexdigest()


def main():
    assert not OUT.exists(), 'Refusing to overwrite previous risk review'
    evidence = {}
    for line in (PACKAGE_DIR / 'SHA256SUMS.txt').read_text(encoding='utf-8').splitlines():
        digest, name = line.split('  ', 1)
        assert Path(name).name == name
        assert sha((PACKAGE_DIR / name).read_bytes()) == digest, name
        evidence[name] = digest

    original = Path(r'C:\Users\Luca\Downloads\Z6_2_0170.bin').read_bytes()
    candidate = (PACKAGE_DIR / 'Z6_2_0170.bin').read_bytes()
    assert sha(original) == ORIGINAL and sha(candidate) == EXPECTED
    assert len(original) == len(candidate) == 49002888
    tables = [np.array(t, dtype=np.uint8) for t in json.loads(
        (ROOT / 'outputs/Z6_2_0170_installability/nikon_xor_tables.json').read_text())]

    def decode(data):
        body = np.frombuffer(data[32:], dtype=np.uint8).copy()
        for start in range(32, len(body), 262144):
            end = min(start + 262144, len(body))
            p = np.arange(start, end, dtype=np.uint32)
            body[start:end] ^= tables[0][p & 255] ^ tables[1][(p >> 8) & 255] ^ tables[2][(p >> 16) & 255]
        return body.tobytes()

    old, new = decode(original), decode(candidate)
    assert old == (ROOT / 'outputs/Z6_2_0170_analysis/decoded_container.bin').read_bytes()
    secret = (ROOT / 'work/feature_scan/boot_auth_10000088.bin').read_bytes()
    assert len(secret) == 8
    suffix = bytes(x ^ y for x, y in zip(secret, bytes.fromhex('e22b5d787c693ffe')))
    assert hashlib.sha1(old + suffix).digest() == original[:20]
    assert hashlib.sha1(new + suffix).digest() == candidate[:20]
    assert original[20:32] == candidate[20:32] and old[:208] == new[:208]
    assert struct.unpack_from('>4I', new, 32) == (5, 208, 0, 0)
    for body in (old, new):
        assert body[-14:] == bytes(14)
        assert binascii.crc_hqx(body[:-16], 0) == int.from_bytes(body[-16:-14], 'big')
    modules = []
    main_old = main_new = None
    cursor = 208
    permitted = set(range(20)) | set(range(len(candidate) - 16, len(candidate) - 14))
    for i in range(5):
        name, start, size, r0, r1 = struct.unpack_from('>16s4I', new, 48 + 32 * i)
        name = name.rstrip(b'\0').decode('ascii')
        assert r0 == r1 == 0 and start == cursor and size >= 2
        cursor += size
        assert cursor <= len(new) - 16
        before, after = old[start:cursor], new[start:cursor]
        assert binascii.crc_hqx(before, 0) == binascii.crc_hqx(after, 0) == 0
        if name == 'eg1850_mas_01700':
            assert main_new is None
            main_old, main_new = before[:-2], after[:-2]
            differences = np.flatnonzero(np.frombuffer(main_old, dtype=np.uint8) !=
                                        np.frombuffer(main_new, dtype=np.uint8)).tolist()
            assert differences == [0x3a3128, 0x3a3129]
            assert main_new == (PACKAGE_DIR / 'eg1850_mas_01700_RAW_only.payload.bin').read_bytes()
            permitted.update(32 + start + p for p in differences)
            permitted.update(range(32 + cursor - 2, 32 + cursor))
        else:
            assert before == after
        modules.append({'name': name, 'crc_valid': True, 'payload_unchanged': before[:-2] == after[:-2]})
    assert cursor == len(new) - 16 and main_new is not None
    positions = np.flatnonzero(np.frombuffer(original, dtype=np.uint8) !=
                              np.frombuffer(candidate, dtype=np.uint8)).tolist()
    assert len(positions) == 24 and set(positions) <= permitted
    assert struct.unpack_from('<126I', main_new, 0x19cb760) == struct.unpack_from('<126I', main_old, 0x19cb760)
    assert struct.unpack_from('<I', main_new, 0x46922c)[0] == 1798001

    def emulator(payload):
        u = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
        u.mem_map(BASE, (len(payload) + 4095) & ~4095)
        u.mem_write(BASE, payload)
        u.mem_map(0xc20d2000, 0x2000)
        u.mem_map(SCRATCH, 0x10000)
        return u

    def call(u, selector):
        u.reg_write(UC_ARM_REG_R0, selector)
        u.reg_write(UC_ARM_REG_R1, 0)
        u.reg_write(UC_ARM_REG_SP, SCRATCH + 0xf000)
        u.reg_write(UC_ARM_REG_LR, STOP | 1)
        u.emu_start(0x103c3115, STOP, count=10000)
        assert u.reg_read(UC_ARM_REG_PC) == STOP
        return u.reg_read(UC_ARM_REG_R0)

    old_u, new_u = emulator(main_old), emulator(main_new)
    for flag in range(256):
        for u in (old_u, new_u):
            u.mem_write(CAPABILITY + 4, bytes([flag]))
        assert call(old_u, 0x12) == int(flag == 0xb2)
        assert call(new_u, 0x12) == 1
    configurations = {
        'zeros': bytes(0x600),
        'ones': bytes([255]) * 0x600,
        'ascending': bytes(i & 255 for i in range(0x600)),
        'deterministic_mixed': bytes((i * 37 + 11) & 255 for i in range(0x600)),
    }
    comparisons = 0
    for label, data in configurations.items():
        for u in (old_u, new_u):
            u.mem_write(CAPABILITY, data)
        for selector in range(0x500):
            if selector != 0x12:
                assert call(old_u, selector) == call(new_u, selector), (label, selector)
                comparisons += 1
        assert bytes(new_u.mem_read(CAPABILITY, len(data))) == data
    asm = {}
    for label, payload in [('original', main_old), ('candidate', main_new)]:
        asm[label] = [f'{ins.address:08x} {ins.bytes.hex()} {ins.mnemonic} {ins.op_str}'
                      for ins in Cs(CS_ARCH_ARM, CS_MODE_THUMB).disasm(
                          payload[0x103c3114-BASE:0x103c313e-BASE], 0x103c3114)]

    load_report = lambda name: json.loads((PACKAGE_DIR / name).read_text(encoding='utf-8'))
    auth, raw, parser = (load_report(name) for name in
                         ('full_auth_machine_verification.json', 'raw_output_machine_verification.json',
                          'update_route_verification.json'))
    assert auth['all_assertions_passed'] and raw['all_assertions_passed']
    auth_candidate = next(c for c in auth['cases'] if c['label'] == 'candidate')
    assert auth_candidate['package_sha256'] == EXPECTED and auth_candidate['authentication_return'] == 1
    assert raw['module_sha256'] == sha(main_new)
    parser_candidate = next(c for c in parser['parser_cases'] if c['input'] == 'authenticated_raw_only_candidate')
    assert parser_candidate['sha256'] == EXPECTED and parser_candidate['parser_result'] == 1
    report = {
        'date': '2026-10-10', 'decision': 'NOT_CLEARED_AS_SAFE_TO_FLASH',
        'offline_recheck_passed': True, 'camera_io': False, 'firmware_package_changed': False,
        'candidate_sha256': EXPECTED, 'bytes': len(candidate),
        'manifest_files_verified': evidence, 'payload_changed_bytes': 2, 'package_changed_bytes': 24,
        'package_crcs_and_digest_rechecked': True, 'modules': modules,
        'recording_policy_and_version_unchanged': True,
        'getter_raw_flag_cases_rerun': 256, 'other_selector_comparisons_rerun': comparisons,
        'selector_test_range': '0x000..0x4ff excluding 0x12, four RAM configuration patterns',
        'full_authentication_report_for_exact_file_revalidated': True,
        'raw_output_existing_total_cases': raw['case_count'],
        'raw_output_existing_candidate_cases': len(raw['cases']['candidate']),
        'existing_parser_acceptance_revalidated': True, 'disassembly': asm,
        'user_reported_observations': {
            'usb_connected': 'Done and delete-update-files entries only',
            'usb_disconnected': 'Update became accessible; camera then refused due to battery level',
            'interpretation': 'Early update UI is accessible at C1.70; final installation acceptance remains unverified',
        },
        'unverified': [
            'Actual erase/program/read-back/reboot on hardware',
            'Independent boot checks and behavior after patched main firmware loads',
            'Physical HDMI RAW output and recorder interoperability',
            'RAW-related startup/menu/settings paths outside the bounded emulation',
            'Recovery when normal firmware menu and PTP are unavailable',
            'Successful rollback or later official-firmware installation',
            'Hash of the copy currently on the camera memory card; card is not mounted on this PC',
        ],
        'risk_probability': 'Not quantifiable from current evidence',
        'recommendation': 'Do not flash a primary camera on the assumption that offline checks prove installation safety.',
    }
    assert sha((PACKAGE_DIR / 'Z6_2_0170.bin').read_bytes()) == EXPECTED
    OUT.mkdir(parents=True)
    (OUT / 'risk_review.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(json.dumps({k: report[k] for k in ('decision', 'offline_recheck_passed', 'candidate_sha256',
                                           'payload_changed_bytes', 'package_changed_bytes',
                                           'getter_raw_flag_cases_rerun', 'other_selector_comparisons_rerun',
                                           'raw_output_existing_total_cases', 'raw_output_existing_candidate_cases')}, indent=2))


if __name__ == '__main__':
    main()
