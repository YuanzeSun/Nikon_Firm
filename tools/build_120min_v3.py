"""Rebuild and verify the exact C1.70 RAW + 120-minute v3 firmware."""
import argparse
import binascii
import hashlib
import json
from pathlib import Path
import struct
from raw_only import load_inputs,parse,require,sha,xor_body

ROOT=Path(__file__).resolve().parents[1]
MANIFEST=ROOT/'tools/patches/z6ii_170_raw_120min_v3.json'
PUBLISHED=ROOT/'firmware/Z6II_C1.70_RAW_120min_v3/Z6_2_0170.bin'
MANIFEST_HASH='d96b8353a068d8a05d4ceac28e8715cb9822987b5fe24576ea497382d27eac15'


def inputs():
    data=MANIFEST.read_bytes()
    require(sha(data)==MANIFEST_HASH,'Patch manifest mismatch')
    manifest=json.loads(data)
    require(manifest['format_version']==1 and manifest['base']=='0x10020000',
            'Unsupported patch manifest')
    return load_inputs(),manifest


def apply(payload,manifest):
    require(sha(payload)==manifest['original_sha256'],'Unexpected original main module')
    modified=bytearray(payload)
    base=int(manifest['base'],16)
    end=0
    for patch in manifest['patches']:
        offset=int(patch['address'],16)-base
        old,new=bytes.fromhex(patch['before']),bytes.fromhex(patch['after'])
        require(offset>=end and len(old)==len(new) and offset+len(old)<=len(payload),
                'Overlapping or invalid patch')
        require(modified[offset:offset+len(old)]==old,'Original bytes differ at '+patch['address'])
        modified[offset:offset+len(old)]=new
        end=offset+len(old)
    require(sha(modified)==manifest['modified_sha256'],'Patched module hash mismatch')
    return bytes(modified)


def expected_body(source,manifest):
    original,body,tables,suffix,modules,main=source
    start,end=main['offset'],main['offset']+main['length']-2
    result=bytearray(body)
    payload=apply(body[start:end],manifest)
    result[start:end]=payload
    result[end:end+2]=binascii.crc_hqx(payload,0).to_bytes(2,'big')
    result[-16:-14]=binascii.crc_hqx(result[:-16],0).to_bytes(2,'big')
    new_modules=parse(result)
    for old,new in zip(modules,new_modules):
        require(tuple(old[k] for k in ('name','offset','length'))==
                tuple(new[k] for k in ('name','offset','length')),'Module directory changed')
        if old['name']!='eg1850_mas_01700':
            require(old==new,'Another module changed')
    require(result[:208]==body[:208],'Container metadata changed')
    require(struct.unpack_from('<I',payload,0x10478290-0x10020000)[0]==180000,
            'Special-mode limit changed')
    return bytes(result)


def verify(package,source,manifest):
    original,old,tables,suffix,modules,main=source
    require(len(package)==len(original),'Package size changed')
    require(sha(package)==manifest['package_sha256'],'Package hash mismatch')
    require(package[20:32]==original[20:32],'Outer version metadata changed')
    body=xor_body(package[32:],tables)
    require(body==expected_body(source,manifest),'Unlisted package modification')
    require(hashlib.sha1(body+suffix).digest()==package[:20],'Outer authentication mismatch')
    require(package[:32]+xor_body(body,tables)==package,'Encoding round trip failed')
    start,end=main['offset'],main['offset']+main['length']-2
    changes=sum(a!=b for a,b in zip(old[start:end],body[start:end]))
    return dict(version=manifest['version'],package_sha256=sha(package),
                module_sha256=sha(body[start:end]),package_bytes=len(package),
                changed_module_bytes=changes,patch_regions=len(manifest['patches']),
                checks='Exact patch replay, module/container CRC16, SHA1 with saved boot suffix, round trip')


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('command',choices=['build','verify'],nargs='?',default='build')
    parser.add_argument('--output',type=Path,default=ROOT/'build/Z6II_C1.70_RAW_120min_v3')
    parser.add_argument('--file',type=Path,default=PUBLISHED)
    args=parser.parse_args()
    source,manifest=inputs()
    if args.command=='verify':
        report=verify(args.file.read_bytes(),source,manifest)
    else:
        require(not args.output.exists(),'Output directory already exists')
        original,body,tables,suffix,modules,main=source
        body=expected_body(source,manifest)
        package=hashlib.sha1(body+suffix).digest()+original[20:32]+xor_body(body,tables)
        report=verify(package,source,manifest)
        args.output.mkdir(parents=True)
        (args.output/'Z6_2_0170.bin').write_bytes(package)
        (args.output/'SHA256SUMS.txt').write_text(sha(package)+'  Z6_2_0170.bin\n',encoding='ascii')
    print(json.dumps(report,indent=2))


if __name__=='__main__':main()
