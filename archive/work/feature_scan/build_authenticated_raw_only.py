"""Build a RAW-only C1.70 candidate directly from the untouched official file.

Offline only. No camera access. Existing outputs are never overwritten.
"""
from pathlib import Path
import binascii
import hashlib
import json
import struct
from build_experimental import EXPECTED, MAIN_HASH, TABLES_HASH, BASE, require, sha, xor_body, parse

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / 'outputs/Z6_2_0170_RAW_only_candidate'
SOURCE = Path(r'C:\Users\Luca\Downloads\Z6_2_0170.bin')


def main():
    require(not OUT.exists(), 'Refusing to overwrite output directory')
    original = SOURCE.read_bytes()
    require(sha(original) == EXPECTED, 'Original SHA-256 mismatch')
    table_data = (ROOT / 'outputs/Z6_2_0170_installability/nikon_xor_tables.json').read_bytes()
    require(sha(table_data) == TABLES_HASH, 'XOR table hash mismatch')
    tables = json.loads(table_data)
    secret = (ROOT / 'work/feature_scan/boot_auth_10000088.bin').read_bytes()
    require(sha(secret) == 'e5c5da8e5ac52c5e99d094a4913ab7bb188547ebf7076b7a7c01bcabedbf88d0',
            'Previously captured boot data mismatch')
    suffix = bytes(a ^ b for a, b in zip(secret, bytes.fromhex('e22b5d787c693ffe')))
    old = xor_body(original[32:], tables)
    require(hashlib.sha1(old + suffix).digest() == original[:20], 'Official digest not reproduced')
    modules = parse(old)
    main_module = next(m for m in modules if m['name'] == 'eg1850_mas_01700')
    require(main_module['payload_sha256'] == MAIN_HASH, 'Original main payload hash mismatch')
    start = main_module['offset']
    end = start + main_module['length'] - 2
    old_payload = old[start:end]
    payload = bytearray(old_payload)

    patch_offset = 0x103c3128 - BASE
    require(payload[patch_offset:patch_offset + 2] == bytes.fromhex('01d1'), 'Unexpected RAW instruction')
    payload[patch_offset:patch_offset + 2] = bytes.fromhex('00bf')
    changes = [i for i, (a, b) in enumerate(zip(old_payload, payload)) if a != b]
    require(changes == [patch_offset, patch_offset + 1], 'Unexpected payload changes')
    require(payload[:patch_offset] == old_payload[:patch_offset] and
            payload[patch_offset + 2:] == old_payload[patch_offset + 2:], 'Non-RAW bytes changed')

    durations = struct.unpack_from('<126I', payload, 0x119eb760 - BASE)
    require(durations.count(1799000) == 96 and durations.count(0) == 30, 'Original duration table changed')
    require(struct.unpack_from('<I', payload, 0x1048922c - BASE)[0] == 1798001, 'Start guard changed')
    require(struct.unpack_from('<I', payload, 0x10478290 - BASE)[0] == 180000, 'Special-mode limit changed')

    body = bytearray(old)
    body[start:end] = payload
    body[end:end + 2] = binascii.crc_hqx(payload, 0).to_bytes(2, 'big')
    body[-16:-14] = binascii.crc_hqx(body[:-16], 0).to_bytes(2, 'big')
    updated = parse(body)
    for before, after in zip(modules, updated):
        require((before['name'], before['offset'], before['length']) ==
                (after['name'], after['offset'], after['length']), 'Module layout changed')
        if before['name'] != 'eg1850_mas_01700':
            require(before == after, 'Other module changed')
    candidate = hashlib.sha1(body + suffix).digest() + original[20:32] + xor_body(body, tables)
    require(len(candidate) == len(original), 'Package length changed')
    require(xor_body(candidate[32:], tables) == body, 'Encode/decode round trip failed')
    require(sha(SOURCE.read_bytes()) == EXPECTED, 'Original file changed')
    report = {
        'status': 'AUTHENTICATED_OFFLINE_CANDIDATE_HARDWARE_UNTESTED',
        'built_from': str(SOURCE), 'original_sha256': EXPECTED,
        'package_sha256': sha(candidate), 'module_sha256': sha(payload), 'bytes': len(candidate),
        'features': ['HDMI RAW capability only'],
        'patches': [{'address': '0x103c3128', 'module_offset': hex(patch_offset),
                     'before': '01d1', 'after': '00bf', 'purpose': 'HDMI RAW capability selector 0x12'}],
        'payload_changed_bytes': len(changes), 'version_unchanged': '1.70',
        'recording_duration_policy_unchanged': True, 'ordinary_recording_limit_ms': 1799000,
        'duration_table_entries_unchanged': 126, 'recording_engine_start_guard': 1798001,
        'special_mode_limit_ms': 180000, 'official_digest_reproduced': True,
        'all_crcs_valid': True, 'other_four_modules_unchanged': True,
        'hardware_installation_tested': False, 'hardware_hdmi_tested': False,
        'original_modules': modules, 'candidate_modules': updated,
    }
    OUT.mkdir(parents=True)
    (OUT / 'Z6_2_0170.bin').write_bytes(candidate)
    (OUT / 'eg1850_mas_01700_RAW_only.payload.bin').write_bytes(payload)
    (OUT / 'build_report.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(json.dumps({k: report[k] for k in ('status', 'package_sha256', 'module_sha256',
                                           'bytes', 'payload_changed_bytes', 'ordinary_recording_limit_ms')}, indent=2))


if __name__ == '__main__':
    main()
