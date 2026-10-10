"""Offline rebuild, verification, and extraction of this exact Z6 II C1.70 package."""

import argparse
import binascii
import hashlib
import json
from pathlib import Path
import struct


ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / "inputs/official/Z6_2_0170.bin"
BOOT = ROOT / "inputs/boot/boot_auth_10000088.bin"
TABLES = ROOT / "inputs/nikon_xor_tables.json"
PUBLISHED = ROOT / "firmware/Z6II_C1.70_RAW_only/Z6_2_0170.bin"
SOURCE_HASH = "5a9640b4c07abe1ecbf5a52655cbec6b893bba045bb2a1a1d21055b9f8f9d06d"
BOOT_HASH = "e5c5da8e5ac52c5e99d094a4913ab7bb188547ebf7076b7a7c01bcabedbf88d0"
TABLES_HASH = "5294749bd4b3db4e7654cff20e9ce8c26138447500e656cab1ff1065d6e8a612"
MAIN_HASH = "7b85aa96ea25d6b23481627313082476619ccb4dd3634a585de4ed896d350071"
CANDIDATE_HASH = "f3e4fa07de6a8818d4bbf1ef65cb3ee5b7954bee8a353fd9b65ca7b7e4e9b11e"
NEW_MAIN_HASH = "9d33bd329349285b356643b72434953c2ded525330d5a60441fcc35bb5d69828"
BASE = 0x10020000
PATCH = 0x103C3128 - BASE
SIZE = 49002888


def require(condition, message):
    if not condition:
        raise ValueError(message)


def sha(data):
    return hashlib.sha256(data).hexdigest()


def xor_body(data, tables):
    pattern = bytes(a ^ b for b in tables[1] for a in tables[0])
    result = bytearray(data)
    for start in range(0, len(data), 65536):
        end = min(start + 65536, len(data))
        high = tables[2][(start >> 16) & 255]
        key = pattern[:end - start].translate(bytes(i ^ high for i in range(256)))
        result[start:end] = (
            int.from_bytes(data[start:end], "little") ^ int.from_bytes(key, "little")
        ).to_bytes(end - start, "little")
    result[:32] = data[:32]
    return bytes(result)


def parse(body):
    require(body[:32] == b" " * 32, "Unexpected decoded prefix")
    require(struct.unpack_from(">4I", body, 32) == (5, 208, 0, 0), "Unexpected directory header")
    require(body[-14:] == bytes(14), "Unexpected footer padding")
    require(binascii.crc_hqx(body[:-16], 0) == int.from_bytes(body[-16:-14], "big"),
            "Container CRC mismatch")
    modules = []
    cursor = 208
    for i in range(5):
        name, start, length, r0, r1 = struct.unpack_from(">16s4I", body, 48 + 32 * i)
        require(start == cursor and length >= 2 and start + length <= len(body) - 16,
                "Unexpected module bounds")
        require(r0 == r1 == 0, "Unexpected module metadata")
        block = body[start:start + length]
        require(binascii.crc_hqx(block, 0) == 0, "Module CRC mismatch")
        modules.append({
            "name": name.rstrip(b"\0").decode("ascii"),
            "offset": start,
            "length": length,
            "payload_sha256": sha(block[:-2]),
            "crc16": block[-2:].hex(),
        })
        cursor += length
    require(cursor == len(body) - 16, "Unaccounted container data")
    require(sum(m["name"] == "eg1850_mas_01700" for m in modules) == 1,
            "Unexpected main module count")
    return modules


def load_inputs():
    original, boot, table_data = SOURCE.read_bytes(), BOOT.read_bytes(), TABLES.read_bytes()
    require(len(original) == SIZE and sha(original) == SOURCE_HASH, "Official input mismatch")
    require(len(boot) == 8 and sha(boot) == BOOT_HASH, "Saved boot data mismatch")
    require(sha(table_data) == TABLES_HASH, "XOR table file mismatch")
    tables = json.loads(table_data)
    require(len(tables) == 3 and all(len(t) == 256 for t in tables), "Invalid XOR tables")
    require(all(type(v) is int and 0 <= v < 256 for t in tables for v in t),
            "Invalid XOR table value")
    suffix = bytes(a ^ b for a, b in zip(boot, bytes.fromhex("e22b5d787c693ffe")))
    body = xor_body(original[32:], tables)
    require(hashlib.sha1(body + suffix).digest() == original[:20],
            "Saved data does not reproduce the official digest")
    require(original[:32] + xor_body(body, tables) == original, "Original round trip failed")
    modules = parse(body)
    main = next(m for m in modules if m["name"] == "eg1850_mas_01700")
    require(main["payload_sha256"] == MAIN_HASH, "Original main payload mismatch")
    return original, body, tables, suffix, modules, main


def verify_candidate(candidate, inputs):
    original, old, tables, suffix, old_modules, main = inputs
    require(len(candidate) == SIZE and sha(candidate) == CANDIDATE_HASH, "Candidate file mismatch")
    new = xor_body(candidate[32:], tables)
    require(candidate[20:32] == original[20:32], "Outer metadata changed")
    require(old[:208] == new[:208], "Directory or version metadata changed")
    require(hashlib.sha1(new + suffix).digest() == candidate[:20], "Candidate digest mismatch")
    require(candidate[:32] + xor_body(new, tables) == candidate, "Candidate round trip failed")
    modules = parse(new)
    start, size = main["offset"], main["length"]
    end = start + size - 2
    old_payload, payload = old[start:end], new[start:end]
    require(old_payload[PATCH:PATCH + 2] == bytes.fromhex("01d1"), "Original opcode mismatch")
    require(payload[PATCH:PATCH + 2] == bytes.fromhex("00bf"), "Patched opcode mismatch")
    require(payload[:PATCH] == old_payload[:PATCH] and payload[PATCH + 2:] == old_payload[PATCH + 2:],
            "Unrequested main payload changes")
    require(sha(payload) == NEW_MAIN_HASH, "Candidate main payload mismatch")
    durations = struct.unpack_from("<126I", payload, 0x119EB760 - BASE)
    require(durations == struct.unpack_from("<126I", old_payload, 0x119EB760 - BASE),
            "Duration table changed")
    require(durations.count(1799000) == 96 and durations.count(0) == 30, "Unexpected duration values")
    require(struct.unpack_from("<I", payload, 0x1048922C - BASE)[0] == 1798001,
            "Recording start guard changed")
    require(struct.unpack_from("<I", payload, 0x10478290 - BASE)[0] == 180000,
            "Special mode limit changed")
    for before, after in zip(old_modules, modules):
        require(tuple(before[k] for k in ("name", "offset", "length")) ==
                tuple(after[k] for k in ("name", "offset", "length")), "Module layout changed")
        if before["name"] != "eg1850_mas_01700":
            require(before == after, "Other module changed")
    changes = [i for i, (a, b) in enumerate(zip(original, candidate)) if a != b]
    allowed = set(range(20)) | {32 + start + PATCH, 32 + start + PATCH + 1}
    allowed.update(range(32 + end, 32 + end + 2))
    allowed.update(range(SIZE - 16, SIZE - 14))
    require(len(changes) == 24 and set(changes) <= allowed, "Unexpected package changes")
    return {
        "scope": "Offline package verification only; no camera or HDMI I/O",
        "original_sha256": SOURCE_HASH,
        "package_sha256": CANDIDATE_HASH,
        "module_sha256": NEW_MAIN_HASH,
        "bytes": SIZE,
        "version": "C1.70",
        "runtime_patch_address": "0x103c3128",
        "module_patch_offset": hex(PATCH),
        "payload_changed_bytes": 2,
        "package_changed_bytes": len(changes),
        "package_changed_offsets": [hex(i) for i in changes],
        "ordinary_recording_limit_ms": 1799000,
        "recording_policy_unchanged": True,
        "all_crcs_and_outer_digests_valid": True,
        "other_four_modules_unchanged": True,
        "modules": modules,
        "all_checks_passed": True,
    }


def build(inputs, output):
    require(not output.exists(), "Refusing to overwrite the output directory")
    original, old, tables, suffix, _, main = inputs
    start, size = main["offset"], main["length"]
    end = start + size - 2
    payload = bytearray(old[start:end])
    require(payload[PATCH:PATCH + 2] == bytes.fromhex("01d1"), "Original opcode mismatch")
    payload[PATCH:PATCH + 2] = bytes.fromhex("00bf")
    body = bytearray(old)
    body[start:end] = payload
    body[end:end + 2] = binascii.crc_hqx(payload, 0).to_bytes(2, "big")
    body[-16:-14] = binascii.crc_hqx(body[:-16], 0).to_bytes(2, "big")
    candidate = hashlib.sha1(body + suffix).digest() + original[20:32] + xor_body(body, tables)
    report = verify_candidate(candidate, inputs)
    if PUBLISHED.exists():
        require(PUBLISHED.read_bytes() == candidate, "Rebuilt package differs from the published file")
        report["byte_identical_to_published_file"] = True
    output.mkdir(parents=True, exist_ok=False)
    (output / "Z6_2_0170.bin").write_bytes(candidate)
    (output / "build_report.json").write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    (output / "SHA256SUMS.txt").write_text(CANDIDATE_HASH + "  Z6_2_0170.bin\n", encoding="ascii")
    return report


def extract(inputs, output):
    require(not output.exists(), "Refusing to overwrite the output directory")
    _, body, _, _, modules, _ = inputs
    (output / "modules").mkdir(parents=True, exist_ok=False)
    (output / "decoded_container.bin").write_bytes(body)
    for module in modules:
        start, size = module["offset"], module["length"]
        (output / "modules" / (module["name"] + ".bin")).write_bytes(body[start:start + size - 2])
    (output / "modules.json").write_text(json.dumps(modules, indent=2) + "\n", encoding="utf-8")
    return {"original_sha256": SOURCE_HASH, "modules_extracted": len(modules), "camera_io": False}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("command", choices=("verify", "build", "extract"))
    parser.add_argument("--output", type=Path, help="New output directory for build or extract")
    args = parser.parse_args()
    if args.command == "verify" and args.output:
        parser.error("verify does not accept --output")
    inputs = load_inputs()
    if args.command == "verify":
        report = verify_candidate(PUBLISHED.read_bytes(), inputs)
    elif args.command == "build":
        report = build(inputs, args.output or ROOT / "build/Z6II_C1.70_RAW_only")
    else:
        report = extract(inputs, args.output or ROOT / "build/official_decoded")
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
