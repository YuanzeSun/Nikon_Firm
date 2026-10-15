"""Rebuild the <=60p 120-minute variant with original startup memory settings."""
import argparse
import hashlib
import json
from pathlib import Path

from raw_only import load_inputs, require, sha, xor_body
from build_120min_v3 import apply, expected_body, verify as verify_package

ROOT = Path(__file__).resolve().parents[1]
MANIFEST = ROOT/'tools/patches/z6ii_170_raw_120min_v4.json'
MANIFEST_HASH = 'ef820533f21ff9ea1c3308def1c82080421bb5fd832d37f6d7b25aae9ea2124d'
PUBLISHED = ROOT/'firmware/Z6II_C1.70_RAW_120min_v4/Z6_2_0170.bin'
UPDATE_RANGES = ((0x1039ceec,0x103a0400), (0x103af680,0x103af9b4),
                 (0x103b1100,0x103b2f00), (0x103f6000,0x103f8000),
                 (0x104d67a4,0x104d6b00), (0x10704a50,0x10705400),
                 (0x1076b9e4,0x1076bb00))


def inputs():
    data = MANIFEST.read_bytes()
    require(sha(data)==MANIFEST_HASH, 'Patch manifest mismatch')
    manifest = json.loads(data)
    require(manifest['format_version']==1 and manifest['base']=='0x10020000',
            'Unsupported patch manifest')
    source = load_inputs()
    _,body,_,_,_,main = source
    original = body[main['offset']:main['offset']+main['length']-2]
    modified = apply(original,manifest)
    base = int(manifest['base'],16)
    ranges = [(int(a,16),int(b,16)) for a,b in manifest['protected_ranges']]
    for start,end in ranges+list(UPDATE_RANGES):
        require(original[start-base:end-base]==modified[start-base:end-base],
                'Protected startup/memory/update range changed at '+hex(start))
    for address in (0x104e1adc,0x104e208e,0x104e24d2,0x10693634):
        offset = address-base
        require(original[offset:offset+2]==modified[offset:offset+2],
                'Original allocation parameter changed')
    require(manifest['allocation_bytes']==11399168 and manifest['allocation_units']==30,
            'Original index allocation changed')
    require(manifest['metadata_heap_bytes']==0xb00000, 'Original metadata heap changed')
    require(all(row['tables_end']<manifest['allocation_bytes'] for row in manifest['layouts']),
            'Layout exceeds original allocation')
    return source,manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('command',choices=['build','verify'],nargs='?',default='build')
    parser.add_argument('--output',type=Path,default=ROOT/'build/Z6II_C1.70_RAW_120min_v4')
    parser.add_argument('--file',type=Path,default=PUBLISHED)
    args = parser.parse_args()
    source,manifest = inputs()
    if args.command=='verify':
        package = args.file.read_bytes()
    else:
        require(not args.output.exists(), 'Output directory already exists')
        original,_,tables,suffix,_,_ = source
        body = expected_body(source,manifest)
        package = hashlib.sha1(body+suffix).digest()+original[20:32]+xor_body(body,tables)
    report = verify_package(package,source,manifest)
    report['original_startup_and_memory_ranges_preserved'] = True
    report['known_update_ranges_preserved'] = True
    report['duration_ms_by_rate'] = {'23.976_to_59.94p':7200000,'100_119.88p':1799000}
    if args.command=='build':
        args.output.mkdir(parents=True)
        (args.output/'Z6_2_0170.bin').write_bytes(package)
        (args.output/'SHA256SUMS.txt').write_text(sha(package)+'  Z6_2_0170.bin\n',encoding='ascii',newline='\n')
    print(json.dumps(report,indent=2))


if __name__=='__main__':main()
