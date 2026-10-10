"""Verify digest and suffix transformation using the original ARM instructions.

No camera I/O. Synthetic secrets only. This does not authenticate a real package.
"""
from pathlib import Path
import sys, struct, hashlib, json
ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'work/python-packages'))
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB, UC_HOOK_CODE
from unicorn.arm_const import *
B=(ROOT/'outputs/Z6_2_0170_analysis/modules/eg1850_mas_01700.bin').read_bytes()
BASE=0x10020000; SCRATCH=0x20000000; STOP=SCRATCH+0xff000
def word(a):return struct.unpack_from('<I',B,a-BASE)[0]
u=Uc(UC_ARCH_ARM,UC_MODE_THUMB)
u.mem_map(BASE,(len(B)+4095)&~4095);u.mem_write(BASE,B)
u.mem_map(0xc1800000,0x1400000)
u.mem_write(0xc1800000,B[0x123a1c14-BASE:0x123a1c14-BASE+0xaedb8])
u.mem_write(0xc2b90000,B[0x12450a00-BASE:0x12450a00-BASE+0x105c])
u.mem_map(SCRATCH,0x100000)
# Initialize the C locale pointer to the original ROM ASCII ctype table.
# Full camera startup, which normally initializes this BSS object, is not run.
u.mem_write(0xc2b4783c,struct.pack('<I',0x123a1ac1))
def assertion_hook(uc,a,size,data):
    assert uc.reg_read(UC_ARM_REG_R0)!=0, 'firmware assertion failed'
    uc.reg_write(UC_ARM_REG_PC,uc.reg_read(UC_ARM_REG_LR))
u.hook_add(UC_HOOK_CODE,assertion_hook,begin=0x103b2da0,end=0x103b2da0)
def call(entry,*args):
    for reg,arg in zip((UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3),args):u.reg_write(reg,arg)
    u.reg_write(UC_ARM_REG_SP,SCRATCH+0xfe000);u.reg_write(UC_ARM_REG_LR,STOP|1)
    try:u.emu_start(entry|1,STOP,count=5000000)
    except Exception:
        print('failed PC',hex(u.reg_read(UC_ARM_REG_PC)));raise
    assert u.reg_read(UC_ARM_REG_PC)==STOP,hex(u.reg_read(UC_ARM_REG_PC))
    return u.reg_read(UC_ARM_REG_R0)

def main():
    vectors=[]
    state=word(0x103b151c)
    for n in (0,3,47,48,55,56,63,64,65,127,128,1024):
        msg=bytes((i*37+11)&255 for i in range(n))
        secret=bytes.fromhex('0011223344556677')
        u.mem_write(SCRATCH+0x2000,msg+bytes(16));u.mem_write(SCRATCH+0x3000,secret)
        u.mem_write(SCRATCH+0x4000,b'Z_6_2\0')
        call(0x103bea3c,SCRATCH+0x3000,8,0xb3fbffff,SCRATCH+0x4000)
        transformed=bytes(u.mem_read(SCRATCH+0x3000,8))
        mask=bytes(x^y for x,y in zip(secret,transformed))
        assert mask.hex()=='e22b5d787c693ffe',mask.hex()
        expected=hashlib.sha1(msg+transformed).digest()
        u.mem_write(SCRATCH+0x3000,secret)
        u.mem_write(SCRATCH+0x5000,expected)
        call(0x103b1120)
        call(0x103b1128,0x1039ea3d)
        call(0x103b112e,SCRATCH+0x2000,len(msg))
        call(0x103b1136,SCRATCH+0x5000)
        call(0x103b1142,SCRATCH+0x3000,0x44c,SCRATCH+0x4000)
        assert call(0x103b2286)==1
        assert bytes(u.mem_read(SCRATCH+0x2000+n,8))==transformed
        vectors.append({'message_length':n,'sha1':expected.hex(),'accepted':True})
    # A mismatching digest is rejected by the actual compare and return path.
    call(0x103b112e,SCRATCH+0x2000,n)
    u.mem_write(SCRATCH+0x5000,bytes(20))
    call(0x103b1136,SCRATCH+0x5000)
    call(0x103b1142,SCRATCH+0x3000,0x44c,SCRATCH+0x4000)
    assert call(0x103b2286)==0
    result={'original_module_sha256':hashlib.sha256(B).hexdigest(),
            'actual_machine_code_executed':True,'stubbed_calls':['assertion/logger 0x103b2da0; predicate checked'],
            'environment_initialization':['C locale ctype pointer 0xc2b4783c -> original ROM table 0x123a1ac1'],
            'synthetic_secret_only':True,'real_package_authentication_confirmed':False,
            'suffix_mask_hex':mask.hex(),'vectors':vectors,'incorrect_digest_rejected':True}
    (ROOT/'work/feature_scan/outer_algorithm_verification.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps(result,indent=2))
if __name__=='__main__':main()
