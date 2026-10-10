"""Run original parser/read-range checks offline. No USB or flash operations."""
import struct,json,hashlib
from verify_outer_algorithm import u,call,word,SCRATCH,ROOT,B,BASE
from unicorn import UC_HOOK_CODE
from unicorn.arm_const import *

file_data=b'';position=0
def rw32(a):return struct.unpack('<I',u.mem_read(a,4))[0]
def write32(a,v):u.mem_write(a,struct.pack('<I',v&0xffffffff))
def file_hook(uc,a,size,data):
    global position
    regs=[uc.reg_read(r) for r in (UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3)]
    if a==0x104d6934:
        off=regs[1];off=off-(1<<32) if off&0x80000000 else off
        position=off+(len(file_data) if regs[2]==2 else (position if regs[2]==1 else 0))
        assert 0<=position<=len(file_data),(position,len(file_data))
        write32(regs[3],position);ret=1
    elif a==0x104d6926:
        dst=rw32(regs[1]+4);capacity=rw32(regs[1]+8)
        amount=min(regs[2],len(file_data)-position)
        assert 0<=amount<=capacity and amount<0x100000
        uc.mem_write(dst,file_data[position:position+amount]);position+=amount
        write32(regs[3],amount);ret=word(0x103af9ac)
    elif a in (0x1034bde8,0x1034bdac):ret=0
    else:raise AssertionError(hex(a))
    uc.reg_write(UC_ARM_REG_R0,ret)
    uc.reg_write(UC_ARM_REG_PC,uc.reg_read(UC_ARM_REG_LR))
for a in (0x104d6934,0x104d6926,0x1034bde8,0x1034bdac):
    u.hook_add(UC_HOOK_CODE,file_hook,begin=a,end=a)

def main():
    global file_data,position
    checks=[]
    from pathlib import Path
    cases=[('official_full_package',Path(r'C:\Users\Luca\Downloads\Z6_2_0170.bin').read_bytes(),1),
           ('authenticated_raw_only_candidate',Path(str(ROOT/'outputs/Z6_2_0170_RAW_only_candidate/Z6_2_0170.bin')).read_bytes(),1),
           ('raw_main_payload_plus_crc',B+__import__('binascii').crc_hqx(B,0).to_bytes(2,'big'),0)]
    for label,buf,expected in cases:
        file_data=buf;position=0
        call(0x103af68c)
        result=call(0x103af744,1,0x20)
        assert result==expected,(label,result)
        checks.append({'input':label,'sha256':hashlib.sha256(buf).hexdigest(),'parser_result':result})
    # ROM overlap causes an early rejection, before any environment lookup.
    result=call(0x104b5314,0x10000088,0x1000008f)
    assert result==0
    output={'parser_entry':'0x103af744','parser_cases':checks,
            'io_stubs':'Read/seek from supplied in-memory files; cache-maintenance calls return immediately.',
            'read_range_entry':'0x104b5314','requested_start':'0x10000088',
            'requested_end_inclusive':'0x1000008f','read_range_result':result,
            'general_read_command_0xf032_rejects_needed_rom_range':True,
            'full_installation_validated':False}
    (ROOT/'outputs/Z6_2_0170_RAW_only_candidate/update_route_verification.json').write_text(json.dumps(output,indent=2),encoding='utf-8')
    print(json.dumps(output,indent=2))
if __name__=='__main__':main()
