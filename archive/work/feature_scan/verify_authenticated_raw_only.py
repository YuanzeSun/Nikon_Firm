"""Independently decode the final RAW-only file and enforce the exact byte scope.

Uses NumPy decoding rather than the builder's XOR implementation.
"""
from pathlib import Path
import binascii
import hashlib
import json
import struct
import numpy as np

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / 'outputs/Z6_2_0170_RAW_only_candidate'
original = Path(r'C:\Users\Luca\Downloads\Z6_2_0170.bin').read_bytes()
candidate = (OUT / 'Z6_2_0170.bin').read_bytes()
assert hashlib.sha256(original).hexdigest() == '5a9640b4c07abe1ecbf5a52655cbec6b893bba045bb2a1a1d21055b9f8f9d06d'
assert len(original) == len(candidate) == 49002888
tables = [np.array(x, dtype=np.uint8) for x in json.loads(
    (ROOT / 'outputs/Z6_2_0170_installability/nikon_xor_tables.json').read_text())]


def decode(data):
    body = np.frombuffer(data[32:], dtype=np.uint8).copy()
    for start in range(32, len(body), 262144):
        end = min(len(body), start + 262144)
        pos = np.arange(start, end, dtype=np.uint32)
        body[start:end] ^= tables[0][pos & 255] ^ tables[1][(pos >> 8) & 255] ^ tables[2][(pos >> 16) & 255]
    return body.tobytes()


old, new = decode(original), decode(candidate)
assert old == (ROOT / 'outputs/Z6_2_0170_analysis/decoded_container.bin').read_bytes()
assert old[:208] == new[:208]
assert struct.unpack_from('>4I', new, 32) == (5, 208, 0, 0)
assert original[20:32] == candidate[20:32]
assert old[-14:] == new[-14:] == bytes(14)
assert binascii.crc_hqx(new[:-16], 0) == int.from_bytes(new[-16:-14], 'big')
secret = (ROOT / 'work/feature_scan/boot_auth_10000088.bin').read_bytes()
assert len(secret) == 8
suffix = bytes(a ^ b for a, b in zip(secret, bytes.fromhex('e22b5d787c693ffe')))
assert hashlib.sha1(old + suffix).digest() == original[:20]
assert hashlib.sha1(new + suffix).digest() == candidate[:20]
modules = []
permitted = set(range(20)) | set(range(len(candidate) - 16, len(candidate) - 14))
cursor = 208
main_count = 0
for i in range(5):
    name, start, size, r0, r1 = struct.unpack_from('>16s4I', new, 48 + 32 * i)
    name = name.rstrip(b'\0').decode('ascii')
    assert r0 == r1 == 0 and start == cursor and size >= 2
    cursor += size
    assert cursor <= len(new) - 16
    block = new[start:start + size]
    assert binascii.crc_hqx(block, 0) == 0
    if name == 'eg1850_mas_01700':
        main_count += 1
        old_payload, payload = old[start:start + size - 2], block[:-2]
        assert payload == (OUT / 'eg1850_mas_01700_RAW_only.payload.bin').read_bytes()
        changes = np.flatnonzero(np.frombuffer(old_payload, dtype=np.uint8) !=
                                 np.frombuffer(payload, dtype=np.uint8)).tolist()
        assert changes == [0x3a3128, 0x3a3129]
        assert old_payload[0x3a3128:0x3a312a] == bytes.fromhex('01d1')
        assert payload[0x3a3128:0x3a312a] == bytes.fromhex('00bf')
        assert payload[:0x3a3128] == old_payload[:0x3a3128]
        assert payload[0x3a312a:] == old_payload[0x3a312a:]
        durations = struct.unpack_from('<126I', payload, 0x19cb760)
        assert durations == struct.unpack_from('<126I', old_payload, 0x19cb760)
        assert durations.count(1799000) == 96 and durations.count(0) == 30
        assert struct.unpack_from('<I', payload, 0x46922c)[0] == 1798001
        assert struct.unpack_from('<I', payload, 0x458290)[0] == 180000
        permitted.update(32 + start + p for p in changes)
        permitted.update(range(32 + start + size - 2, 32 + start + size))
    else:
        assert old[start:start + size] == block
    modules.append({'name': name, 'crc_valid': True,
                    'payload_sha256': hashlib.sha256(block[:-2]).hexdigest()})
assert main_count == 1 and cursor == len(new) - 16
changed = np.flatnonzero(np.frombuffer(original, dtype=np.uint8) !=
                         np.frombuffer(candidate, dtype=np.uint8)).tolist()
assert set(changed) <= permitted
report = {
    'candidate_sha256': hashlib.sha256(candidate).hexdigest(),
    'independent_decoder_matches_original_export': True,
    'payload_changed_bytes': 2, 'package_changed_bytes': len(changed),
    'package_changed_offsets': [hex(p) for p in changed],
    'only_raw_instruction_and_checksums_changed': True,
    'ordinary_recording_limit_ms': 1799000, 'all_126_duration_entries_unchanged': True,
    'recording_start_guard_unchanged': True, 'all_other_main_payload_bytes_unchanged': True,
    'other_four_modules_unchanged': True, 'all_module_crcs_valid': True,
    'container_crc_valid': True, 'modules': modules,
    'original_outer_digest_reproduced': True, 'candidate_outer_digest_verified': True,
    'model_and_version_metadata_unchanged': True,
    'hardware_installation_tested': False, 'physical_hdmi_tested': False,
    'all_assertions_passed': True,
}
(OUT / 'independent_package_verification.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
print(json.dumps(report, indent=2))
