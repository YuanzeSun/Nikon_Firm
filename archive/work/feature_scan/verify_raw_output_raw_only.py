"""Execute actual RAW format selection and sink-format matching on built bytes.

Camera properties and HDMI sink capability data are supplied by the harness;
this is not an electrical HDMI or external-recorder interoperability test.
"""
from pathlib import Path
import hashlib,json,struct,sys
ROOT=Path(__file__).resolve().parents[2];OUT=ROOT/'outputs/Z6_2_0170_RAW_only_candidate'
sys.path.insert(0,str(ROOT/'work/python-packages'))
from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB,UC_HOOK_CODE
from unicorn.arm_const import *
BASE=0x10020000;SCRATCH=0x20000000;STOP=SCRATCH+0xff000
FORMATS={(1,2):0x10,(1,3):0x1f,(1,4):0x22,(1,5):0x21,(1,6):0x20,(2,4):0x42,(2,5):0x43,(2,6):0x44}
def run(payload,patched):
    u=Uc(UC_ARCH_ARM,UC_MODE_THUMB);u.mem_map(BASE,(len(payload)+4095)&~4095);u.mem_write(BASE,payload)
    u.mem_map(0xc1000000,0x03000000);u.mem_map(SCRATCH,0x100000)
    properties={};available=[];flags={};calls=[]
    def hook(uc,a,n,d):
        r0=uc.reg_read(UC_ARM_REG_R0)
        if a==0x103f7bd0:uc.reg_write(UC_ARM_REG_R0,properties.get(r0,0))
        elif a in {0x10633b1c,0x106f2570}:uc.reg_write(UC_ARM_REG_R0,0)
        elif a==0x1057fa38:
            uc.mem_write(r0,bytes(0xa0))
            for i,f in enumerate(available):uc.mem_write(r0+8*i,struct.pack('<II',f,1))
            uc.reg_write(UC_ARM_REG_R0,1)
        elif a in {0x10633d68,0x10633d6e}:flags[hex(a)]=r0
        else:return
        uc.reg_write(UC_ARM_REG_PC,uc.reg_read(UC_ARM_REG_LR))
    u.hook_add(UC_HOOK_CODE,hook)
    for flag in [0,0xb2]:
        u.mem_write(0xc20d2958,bytes([flag]))
        for (resolution,rate),fmt in FORMATS.items():
            for raw_enabled in [0,1]:
                for state in [1,2,4,5]:
                    for sink_supports_raw in [False,True]:
                        properties.clear();properties.update({0x12c9:raw_enabled,0x12ca:resolution,0x12cb:rate})
                        available[:]=[fmt] if sink_supports_raw else [3]
                        flags.clear()
                        u.reg_write(UC_ARM_REG_R0,state);u.reg_write(UC_ARM_REG_R1,0)
                        u.reg_write(UC_ARM_REG_SP,SCRATCH+0xfe000);u.reg_write(UC_ARM_REG_LR,STOP|1)
                        u.emu_start(0x1063a1f7,STOP,count=100000)
                        assert u.reg_read(UC_ARM_REG_PC)==STOP
                        enabled=bool(flags['0x10633d68'])
                        expected=bool(raw_enabled and (patched or flag==0xb2) and state in [2,4,5] and sink_supports_raw)
                        assert enabled==expected,(flag,resolution,rate,state,sink_supports_raw,flags)
                        result=u.reg_read(UC_ARM_REG_R0)
                        if enabled:assert result==fmt
                        calls.append({'original_raw_flag':flag,'resolution_setting':resolution,'rate_setting':rate,
                                      'raw_enabled_setting':raw_enabled,'output_state':state,'sink_advertises_raw':sink_supports_raw,
                                      'raw_route_selected':enabled,'selected_format':result})
    return calls
original=(ROOT/'outputs/Z6_2_0170_analysis/modules/eg1850_mas_01700.bin').read_bytes()
candidate=(OUT/'eg1850_mas_01700_RAW_only.payload.bin').read_bytes()
assert hashlib.sha256(candidate).hexdigest()=='9d33bd329349285b356643b72434953c2ded525330d5a60441fcc35bb5d69828'
results={'original':run(original,False),'candidate':run(candidate,True)}
report={'scope':__doc__,'module_sha256':hashlib.sha256(candidate).hexdigest(),
        'actual_routines':['0x1063a1f6','0x10657c24','0x103c3114'],
        'cases':results,'case_count':sum(map(len,results.values())),'all_assertions_passed':True,
        'physical_hdmi_tested':False}
(OUT/'raw_output_machine_verification.json').write_text(json.dumps(report,indent=2))
print(json.dumps({'case_count':report['case_count'],'all_assertions_passed':True,
                  'unlicensed_flag_selects_raw_when_settings_and_sink_allow':True,
                  'raw_off_and_incompatible_sink_gates_preserved':True},indent=2))
