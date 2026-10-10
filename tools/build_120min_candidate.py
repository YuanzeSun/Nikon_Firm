"""Build the Z6 II C1.70 HDMI RAW + 120-minute candidate package."""

import argparse
import binascii
import hashlib
import json
import struct
from pathlib import Path

from raw_only import load_inputs, parse, sha, xor_body


ROOT = Path(__file__).resolve().parents[1]
BASE = 0x10020000
RAW_PATCH = 0x103C3128 - BASE
DURATION_TABLE = 0x119EB760 - BASE
START_GUARD = 0x1048922C - BASE
SPECIAL_LIMIT = 0x10478290 - BASE
EXPECTED = "833a387669b9bbd47b6a9bfd2fd50015c79c1ca172c6b4e5bd141ccb89d99a3a"


def require(condition, message):
    if not condition:
        raise ValueError(message)


def patch_u32(payload, offset, value):
    payload[offset:offset + 4] = struct.pack("<I", value)


def build(output):
    require(not output.exists(), "Refusing to overwrite the output directory")
    original, decoded, tables, suffix, modules, main = load_inputs()
    start, length = main["offset"], main["length"]
    end = start + length - 2
    old_payload = decoded[start:end]
    payload = bytearray(old_payload)

    require(payload[RAW_PATCH:RAW_PATCH + 2] == bytes.fromhex("01d1"),
            "Unexpected RAW opcode")
    payload[RAW_PATCH:RAW_PATCH + 2] = bytes.fromhex("00bf")

    durations = struct.unpack_from("<126I", payload, DURATION_TABLE)
    require(set(durations) <= {0, 1799000} and durations.count(1799000) == 96,
            "Unexpected duration table")
    for index, value in enumerate(durations):
        if value:
            patch_u32(payload, DURATION_TABLE + index * 4, 7200000)

    require(struct.unpack_from("<I", payload, START_GUARD)[0] == 1798001,
            "Unexpected recording start guard")
    patch_u32(payload, START_GUARD, 7199001)
    require(struct.unpack_from("<I", payload, SPECIAL_LIMIT)[0] == 180000,
            "Unexpected special-mode limit")

    body = bytearray(decoded)
    body[start:end] = payload
    body[end:end + 2] = binascii.crc_hqx(payload, 0).to_bytes(2, "big")
    body[-16:-14] = binascii.crc_hqx(body[:-16], 0).to_bytes(2, "big")
    updated_modules = parse(body)
    for before, after in zip(modules, updated_modules):
        require((before["name"], before["offset"], before["length"]) ==
                (after["name"], after["offset"], after["length"]),
                "Module layout changed")
        if before["name"] != "eg1850_mas_01700":
            require(before == after, "Non-main module changed")

    candidate = hashlib.sha1(body + suffix).digest() + original[20:32] + xor_body(body, tables)
    require(len(candidate) == len(original), "Package size changed")
    require(sha(candidate) == EXPECTED, "Candidate hash mismatch")
    require(xor_body(candidate[32:], tables) == bytes(body), "Package round trip failed")

    output.mkdir(parents=True)
    (output / "Z6_2_0170.bin").write_bytes(candidate)
    (output / "SHA256SUMS.txt").write_text(f"{EXPECTED}  Z6_2_0170.bin\n", encoding="ascii")
    (output / "build_report.json").write_text(json.dumps({
        "package_sha256": EXPECTED,
        "module_sha256": sha(payload),
        "raw_patch": "0x103c3128: 01d1 -> 00bf",
        "duration_ms": 7200000,
        "start_guard": 7199001,
        "special_mode_limit": 180000,
        "other_modules_unchanged": True,
    }, indent=2) + "\n", encoding="utf-8")
    return candidate


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path,
                        default=ROOT / "build/Z6II_C1.70_RAW_120min_candidate")
    args = parser.parse_args()
    build(args.output)
    print(f"built {args.output / 'Z6_2_0170.bin'}")


if __name__ == "__main__":
    main()
