"""Check complete decoded packages using original firmware SHA-1 instructions.

Offline only; hardware and USB are not involved. Uses the eight boot bytes
already read and restored on the camera. The cryptographic implementation is
not stubbed; the shared harness only replaces its assertion/logging routine.
"""
import hashlib
import json
import time
import struct
from pathlib import Path
from verify_outer_algorithm import u,call,word,ROOT,B,SCRATCH,STOP
from unicorn.arm_const import UC_ARM_REG_SP,UC_ARM_REG_LR,UC_ARM_REG_PC
from build_experimental import xor_body

OUT=ROOT/'outputs/Z6_2_0170_RAW_only_candidate'
BODY=0x30000000


def main():
    secret=(ROOT/'work/feature_scan/boot_auth_10000088.bin').read_bytes()
    assert len(secret)==8
    tables=json.loads((ROOT/'outputs/Z6_2_0170_installability/nikon_xor_tables.json').read_text())
    original=Path(r'C:\Users\Luca\Downloads\Z6_2_0170.bin').read_bytes()
    candidate=(OUT/'Z6_2_0170.bin').read_bytes()
    assert hashlib.sha256(candidate).hexdigest()=='f3e4fa07de6a8818d4bbf1ef65cb3ee5b7954bee8a353fd9b65ca7b7e4e9b11e'
    u.mem_map(BODY,(len(candidate)+4095)&~4095)
    report={'firmware_sha256':hashlib.sha256(B).hexdigest(),
            'live_boot_bytes_sha256':hashlib.sha256(secret).hexdigest(),
            'sha1_implementation':'Original ARM/Thumb firmware instructions, no cryptographic stubs',
            'full_package_bodies':True,'camera_io':False,'cases':[]}
    for label,package in [('original',original),('candidate',candidate)]:
        body=xor_body(package[32:],tables)
        u.mem_write(BODY,body+bytes(8))
        u.mem_write(SCRATCH+0x3000,secret)
        u.mem_write(SCRATCH+0x4000,b'Z_6_2\0')
        u.mem_write(SCRATCH+0x5000,package[:20])
        call(0x103b1120)
        call(0x103b1128,0x1039ea3d)
        call(0x103b112e,BODY,len(body))
        call(0x103b1136,SCRATCH+0x5000)
        call(0x103b1142,SCRATCH+0x3000,0x44c,SCRATCH+0x4000)
        u.reg_write(UC_ARM_REG_SP,SCRATCH+0xfe000)
        u.reg_write(UC_ARM_REG_LR,STOP|1)
        pc=0x103b2287; blocks=0; started=time.monotonic(); last=started
        print(label+': executing original authentication instructions for complete '+str(len(body))+'-byte body',flush=True)
        while True:
            u.emu_start(pc,STOP,count=50000000)
            blocks+=1; pc=u.reg_read(UC_ARM_REG_PC)
            if pc==STOP:break
            if time.monotonic()-last>20:
                print(f'{label}: {blocks*50} million instruction budget processed; still running',flush=True)
                last=time.monotonic()
            if blocks>300:raise RuntimeError('Unexpectedly long authentication execution')
            pc|=1
        from unicorn.arm_const import UC_ARM_REG_R0
        accepted=u.reg_read(UC_ARM_REG_R0)
        assert accepted==1,(label,accepted)
        report['cases'].append({'label':label,'package_sha256':hashlib.sha256(package).hexdigest(),
                                'body_bytes':len(body),'authentication_return':accepted,
                                'elapsed_seconds':round(time.monotonic()-started,2)})
        (OUT/'full_auth_machine_verification.json').write_text(json.dumps(report,indent=2),encoding='utf-8')
        print(label+': authentication accepted',flush=True)
    report['all_assertions_passed']=True
    (OUT/'full_auth_machine_verification.json').write_text(json.dumps(report,indent=2),encoding='utf-8')
    print(json.dumps(report,indent=2),flush=True)


if __name__=='__main__':main()
