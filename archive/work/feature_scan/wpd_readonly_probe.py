"""Read Nikon identity and supported commands through the Windows MTP driver.

Uses GENERIC_READ access. No camera settings, files, firmware, service-mode
switches, or persistent values are written. Set* calls below populate local COM
argument objects; only explicit SendCommand calls reach the driver.
"""
from pathlib import Path
import sys,ctypes as C,json,datetime
ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/'work/python-packages'))
import comtypes.client as client
from comtypes import GUID,COMError
A=client.GetModule('C:/Windows/System32/PortableDeviceApi.dll')
T=client.GetModule('C:/Windows/System32/PortableDeviceTypes.dll')
COMMON='{F0422A9C-5DC8-4440-B5BD-5DF28835658A}'
MTP='{4D545058-1A2E-4106-A357-771E0819FC56}'
CLIENT='{204D9F0C-2292-4080-9F42-40664E70F859}'
DEVICE='{26D4979A-E643-4626-9E2B-736DC0C92FDC}'
API='{10E54A3E-052D-4777-A13C-DE7614BE2BC4}'
def key(guid,pid):return T._tagpropertykey(GUID(guid),pid)
def values():return client.CreateObject(T.PortableDeviceValues,interface=T.IPortableDeviceValues)
def command(dev,pid):
    v=values();v.SetGuidValue(key(COMMON,1001),GUID(MTP));v.SetUnsignedIntegerValue(key(COMMON,1002),pid)
    v.SetUnsignedIntegerValue(key(API,3),1)  # FILE_READ_ACCESS transport IOCTL
    result=dev.SendCommand(0,v).QueryInterface(T.IPortableDeviceValues)
    status=result.GetErrorValue(key(COMMON,1003))
    if status:raise RuntimeError('WPD result HRESULT '+hex(status&0xffffffff))
    return result
def enumerate_nikon():
    manager=client.CreateObject(A.PortableDeviceManager,interface=A.IPortableDeviceManager)
    manager.RefreshDeviceList()
    count=C.c_ulong(0)
    manager._IPortableDeviceManager__com_GetDevices(None,C.byref(count))
    ids=(C.c_wchar_p*count.value)()
    manager._IPortableDeviceManager__com_GetDevices(ids,C.byref(count))
    matches=[s for s in ids if s and 'vid_04b0&pid_044c' in s.lower()]
    if len(matches)!=1:raise RuntimeError('Expected one connected Z6 II; found '+str(len(matches)))
    return matches[0]
def open_device():
    identifier=enumerate_nikon()
    dev=client.CreateObject(A.PortableDevice,interface=A.IPortableDevice)
    info=values()
    info.SetStringValue(key(CLIENT,2),'Z6 II read-only firmware investigation')
    info.SetUnsignedIntegerValue(key(CLIENT,3),1)
    info.SetUnsignedIntegerValue(key(CLIENT,4),0)
    info.SetUnsignedIntegerValue(key(CLIENT,9),0x80000000)
    info.SetUnsignedIntegerValue(key(CLIENT,8),2)
    dev.Open(identifier,info)
    return dev
def read_identity(dev):
    props=dev.Content().Properties()
    keys=client.CreateObject(T.PortableDeviceKeyCollection,interface=T.IPortableDeviceKeyCollection)
    fields={'firmware_version':3,'manufacturer':7,'model':8}
    for pid in fields.values():keys.Add(key(DEVICE,pid))
    result=props.GetValues('DEVICE',keys).QueryInterface(T.IPortableDeviceValues)
    identity={}
    for name,pid in fields.items():
        try:identity[name]=result.GetStringValue(key(DEVICE,pid))
        except COMError as e:identity[name]={'hresult':hex(e.hresult&0xffffffff)}
    return identity
def main():
    report={'timestamp':datetime.datetime.now().astimezone().isoformat(),'access':'GENERIC_READ',
            'camera_settings_written':False,'camera_files_written':False,'firmware_written':False}
    dev=open_device()
    try:
        report['identity']=read_identity(dev)
        try:
            r=command(dev,11)
            coll=r.GetIPortableDevicePropVariantCollectionValue(key(MTP,1005))
            count=C.c_ulong();coll.GetCount(C.byref(count));ops=[]
            for i in range(count.value):
                v=T.tag_inner_PROPVARIANT();coll.GetAt(i,C.byref(v))
                assert v.vt==19,v.vt
                ops.append(getattr(v,v._fields_[-1][0]).ulVal)
            report['advertised_vendor_operations']=[hex(x) for x in ops]
        except Exception as e:report['vendor_operations_error']=str(e)
        try:report['vendor_extension']=command(dev,18).GetStringValue(key(MTP,1014))
        except Exception as e:report['vendor_extension_error']=str(e)
    finally:dev.Close()
    out=ROOT/'work/feature_scan/connected_device_probe.json'
    out.write_text(json.dumps(report,indent=2,ensure_ascii=False),encoding='utf-8')
    print(json.dumps(report,indent=2,ensure_ascii=False))
if __name__=='__main__':main()
