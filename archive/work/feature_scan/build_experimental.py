"""Build an OFFLINE RESEARCH candidate for this exact Z6 II 1.70 input.

The outer SHA-1 authentication is NOT rebuilt. Output is NOT a validated camera
update. No device is accessed. Existing inputs and output directories are never
overwritten. Only the RAW capability branch and ordinary duration table change.
Python 3.10+, standard library; keep nikon_xor_tables.json beside this script.
"""
from pathlib import Path
import argparse,binascii,hashlib,json,struct,shutil

EXPECTED='5a9640b4c07abe1ecbf5a52655cbec6b893bba045bb2a1a1d21055b9f8f9d06d'
MAIN_HASH='7b85aa96ea25d6b23481627313082476619ccb4dd3634a585de4ed896d350071'
TABLES_HASH='5294749bd4b3db4e7654cff20e9ce8c26138447500e656cab1ff1065d6e8a612'
BASE=0x10020000
LIMIT=7200000

def require(ok,msg):
    if not ok:raise ValueError(msg)
def sha(data):return hashlib.sha256(data).hexdigest()
def xor_body(data,tables):
    pattern=bytes(a^b for b in tables[1] for a in tables[0])
    result=bytearray(data)
    for start in range(0,len(data),65536):
        end=min(start+65536,len(data));high=tables[2][(start>>16)&255]
        key=pattern[:end-start].translate(bytes(i^high for i in range(256)))
        result[start:end]=(int.from_bytes(data[start:end],'little')^int.from_bytes(key,'little')).to_bytes(end-start,'little')
    result[:32]=data[:32]
    return bytes(result)
def parse(body):
    require(body[:32]==b' '*32,'Body prefix mismatch')
    count,size,r0,r1=struct.unpack_from('>4I',body,32)
    require(count==5 and size==208 and r0==r1==0,'Directory mismatch')
    require(body[-14:]==bytes(14),'Footer padding mismatch')
    require(binascii.crc_hqx(body[:-16],0)==int.from_bytes(body[-16:-14],'big'),'Container CRC mismatch')
    modules=[];cursor=size
    for i in range(count):
        name,start,length,r0,r1=struct.unpack_from('>16s4I',body,48+32*i)
        require(start==cursor and length>=2 and start+length<=len(body)-16 and r0==r1==0,'Module bounds mismatch')
        block=body[start:start+length]
        require(binascii.crc_hqx(block,0)==0,'Module CRC mismatch')
        modules.append({'name':name.rstrip(b'\0').decode('ascii'),'offset':start,'length':length,'payload_sha256':sha(block[:-2]),'crc16':block[-2:].hex()})
        cursor+=length
    require(cursor==len(body)-16,'Unaccounted container data')
    return modules
def ranges(positions):
    result=[]
    for value in positions:
        if result and value==result[-1][1]:result[-1][1]+=1
        else:result.append([value,value+1])
    return result
def build(source,out,tables_path):
    original=source.read_bytes()
    require(sha(original)==EXPECTED,'Original file SHA-256 mismatch')
    table_bytes=tables_path.read_bytes()
    require(sha(table_bytes)==TABLES_HASH,'XOR table file SHA-256 mismatch')
    tables=json.loads(table_bytes)
    require(len(tables)==3 and all(len(t)==256 for t in tables),'XOR tables invalid')
    require(not out.exists(),'Refusing to overwrite output directory')
    decoded=xor_body(original[32:],tables)
    require(original[:32]+xor_body(decoded,tables)==original,'Unmodified decode/encode round trip failed')
    old_modules=parse(decoded)
    main=next(m for m in old_modules if m['name']=='eg1850_mas_01700')
    require(main['payload_sha256']==MAIN_HASH,'Main module SHA-256 mismatch')
    start=main['offset'];end=start+main['length']-2
    old_main=decoded[start:end];new_main=bytearray(old_main)
    changes=[];allowed=set()
    def patch(address,before,after,purpose):
        off=address-BASE
        require(len(before)==len(after) and new_main[off:off+len(before)]==before,'Patch original bytes mismatch')
        new_main[off:off+len(before)]=after
        allowed.update(range(off,off+len(before)))
        changes.append({'purpose':purpose,'runtime_address':hex(address),'module_offset':hex(off),'source_file_offset':hex(32+start+off),'before_hex':before.hex(),'after_hex':after.hex()})
    patch(0x103c3128,bytes.fromhex('01d1'),bytes.fromhex('00bf'),'RAW capability selector 0x12 conditional branch')
    zeros=0
    for i in range(126):
        address=0x119eb760+i*4;off=address-BASE
        value=struct.unpack_from('<I',old_main,off)[0]
        require(value in (0,1799000),'Unexpected duration table entry')
        if value==1799000:patch(address,struct.pack('<I',value),struct.pack('<I',LIMIT),'Ordinary duration upper-bound table, 120-minute experiment')
        else:zeros+=1
    require(len(changes)==97 and zeros==30,'Unexpected patch counts')
    require(struct.unpack_from('<I',new_main,0x10478290-BASE)[0]==180000,'Special limit changed')
    main_diff=[i for i,(a,b) in enumerate(zip(old_main,new_main)) if a!=b]
    require(set(main_diff)<=allowed,'Unrequested main-module change')
    new_body=bytearray(decoded);new_body[start:end]=new_main
    new_body[end:end+2]=binascii.crc_hqx(new_main,0).to_bytes(2,'big')
    new_body[-16:-14]=binascii.crc_hqx(new_body[:-16],0).to_bytes(2,'big')
    new_modules=parse(new_body)
    for before,after in zip(old_modules,new_modules):
        require((before['name'],before['offset'],before['length'])==(after['name'],after['offset'],after['length']),'Module directory altered')
        if before['name']!='eg1850_mas_01700':require(before==after,'Unrequested module change')
    # Deliberately retain the original outer header: its 20-byte digest cannot be
    # regenerated from the data presently available. DO NOT label this bootable.
    candidate=original[:32]+xor_body(bytes(new_body),tables)
    require(len(candidate)==len(original),'Container length changed')
    require(xor_body(candidate[32:],tables)==bytes(new_body),'Candidate round trip failed')
    package_diff=[i for i,(a,b) in enumerate(zip(original,candidate)) if a!=b]
    allowed_file={32+start+i for i in allowed}|set(range(32+end,32+end+2))|set(range(len(original)-16,len(original)-14))
    require(set(package_diff)<=allowed_file,'Unrequested package change')
    require(sha(source.read_bytes())==EXPECTED,'Source file changed during build')
    out.mkdir(parents=True)
    container_name='Z6_2_0170_RAW_120min_OUTER_AUTH_UNVERIFIED.research.bin'
    module_name='eg1850_mas_01700_RAW_120min.payload.bin'
    (out/container_name).write_bytes(candidate)
    (out/module_name).write_bytes(new_main)
    report={'status':'OFFLINE_RESEARCH_ONLY_NOT_A_VALIDATED_UPDATE','source_path':str(source.resolve()),'source_sha256':EXPECTED,
            'source_unchanged':True,'source_size':len(original),'limit_ms':LIMIT,'limit_minutes':120,
            'outer_authentication':{'status':'NOT_REBUILT','original_header_preserved':True,'sha1_expected_hex':original[:20].hex(),
               'missing_input':'Eight bytes read by firmware from runtime address 0x10000088, outside supplied main image.',
               'camera_installation_validated':False,'warning':'CRC success does not establish normal updater acceptance. Do not flash this research package.'},
            'build_checks':{'original_round_trip_byte_identical':True,'candidate_round_trip_byte_identical':True,
               'all_five_module_crcs_valid':True,'container_crc_valid':True,'only_main_payload_changed':True,
               'directory_offsets_and_lengths_unchanged':True,'edits_limited_to_requested_candidates_and_crcs':True},
            'module_payload_changed_byte_count':len(main_diff),'package_changed_byte_count':len(package_diff),
            'package_changed_ranges':[{'start':hex(a),'end_exclusive':hex(z)} for a,z in ranges(package_diff)],
            'patches':changes,'old_modules':old_modules,'new_modules':new_modules,
            'old_container_crc16':decoded[-16:-14].hex(),'new_container_crc16':bytes(new_body[-16:-14]).hex(),
            'outputs':{container_name:{'bytes':len(candidate),'sha256':sha(candidate)},module_name:{'bytes':len(new_main),'sha256':sha(new_main)}}}
    (out/'build_report.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
    print(json.dumps({k:report[k] for k in ('status','module_payload_changed_byte_count','package_changed_byte_count','old_container_crc16','new_container_crc16','outputs')},indent=2))
    return report

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('source',type=Path);p.add_argument('output',type=Path)
    p.add_argument('--tables',type=Path,default=Path(__file__).with_name('nikon_xor_tables.json'))
    a=p.parse_args();build(a.source,a.output,a.tables)
