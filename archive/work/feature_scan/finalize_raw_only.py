"""Publish the local README and manifest only after all offline checks pass."""
from pathlib import Path
import hashlib
import json

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / 'outputs/Z6_2_0170_RAW_only_candidate'


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def report(name):
    return json.loads((OUT / name).read_text(encoding='utf-8'))


build = report('build_report.json')
independent = report('independent_package_verification.json')
auth = report('full_auth_machine_verification.json')
raw = report('raw_output_machine_verification.json')
parser = report('update_route_verification.json')
candidate_hash = 'f3e4fa07de6a8818d4bbf1ef65cb3ee5b7954bee8a353fd9b65ca7b7e4e9b11e'
module_hash = '9d33bd329349285b356643b72434953c2ded525330d5a60441fcc35bb5d69828'
original_hash = '5a9640b4c07abe1ecbf5a52655cbec6b893bba045bb2a1a1d21055b9f8f9d06d'
assert sha(OUT / 'Z6_2_0170.bin') == candidate_hash == build['package_sha256'] == independent['candidate_sha256']
assert sha(OUT / 'eg1850_mas_01700_RAW_only.payload.bin') == module_hash == build['module_sha256'] == raw['module_sha256']
assert sha(Path(r'C:\Users\Luca\Downloads\Z6_2_0170.bin')) == original_hash
assert sha(ROOT / 'outputs/Z6_2_0170_RAW_120min_candidate_v2/Z6_2_0170.bin') == '833a387669b9bbd47b6a9bfd2fd50015c79c1ca172c6b4e5bd141ccb89d99a3a'
assert independent['all_assertions_passed'] and auth['all_assertions_passed'] and raw['all_assertions_passed']
assert independent['payload_changed_bytes'] == 2 and independent['package_changed_bytes'] == 24
assert raw['case_count'] == 512
assert {c['label']: (c['package_sha256'], c['authentication_return']) for c in auth['cases']} == {
    'original': (original_hash, 1), 'candidate': (candidate_hash, 1)}
candidate_case = next(c for c in parser['parser_cases'] if c['input'] == 'authenticated_raw_only_candidate')
assert candidate_case['sha256'] == candidate_hash and candidate_case['parser_result'] == 1

final = {
    'status': 'OFFLINE_CHECKS_PASSED_HARDWARE_UNTESTED', 'package_sha256': candidate_hash,
    'module_sha256': module_hash, 'version': 'C1.70', 'feature': 'HDMI RAW capability only',
    'normal_recording_limit_ms': 1799000, 'recording_policy_unchanged': True,
    'payload_changed_bytes': 2, 'package_changed_bytes': 24,
    'independent_decode_crc_and_digest_passed': True,
    'complete_original_authentication_machine_code_passed': True,
    'raw_path_machine_code_cases_passed': 512, 'package_parser_accepted': True,
    'official_source_and_previous_dual_feature_candidate_unchanged': True,
    'camera_access_during_this_build': False, 'hardware_installation_tested': False,
    'same_version_update_eligibility_confirmed': False, 'physical_hdmi_tested': False,
}
(OUT / 'final_verification.json').write_text(json.dumps(final, indent=2), encoding='utf-8')
readme = '''# Nikon Z6 II C1.70 — 仅 HDMI RAW 解锁候选包

本目录的 `Z6_2_0170.bin` 是从官方原始 C1.70 文件重新生成的独立候选包。
只修改 HDMI RAW 功能判断；录像时长保持官方默认策略，普通模式上限为
1,799,000 毫秒（29 分 59 秒），没有加入 120 分钟修改。

## 修改范围

- 主程序仅改变 1 条指令、2 个字节：运行地址 `0x103c3128`，模块偏移
  `0x3a3128`，`01 d1` → `00 bf`，跳过 RAW 能力选择器 `0x12` 的禁用分支。
- 完整文件与原文件共差异 24 字节：上述指令 2 字节、主模块 CRC 2 字节、
  外层摘要 20 字节。容器 CRC 已重新计算并验证，其数值恰好保持不变。
- 126 项录像时长表、录像引擎启动检查、其他主程序字节及另外四个模块与原版一致。
- 型号、版本信息和文件长度保持原值：C1.70，49,002,888 字节。
- 原始官方文件和已有 RAW + 120 分钟候选文件均保留。

## 验证结果和边界

独立解码、逐字节差异、五个模块 CRC、容器 CRC、外层摘要检查均通过。
在模拟器中执行原始固件认证指令，对原包和此候选包的完整数据体均返回接受；
原始包解析器也接受此候选包。RAW 路径 512 个离线测试用例通过。

本次仅生成电脑上的文件，没有访问或刷写相机。实体 HDMI RAW 输出、完整安装流程
以及 C1.70 同版本重刷资格仍未验证。离线校验通过不等于已证明刷写安全。

## 文件

- `Z6_2_0170.bin`：完整候选固件包。
- `eg1850_mas_01700_RAW_only.payload.bin`：解码后的主模块，仅用于审查，不是完整升级包。
- `build_report.json`：输入来源、修改记录及模块信息。
- `independent_package_verification.json`：独立差异和校验报告。
- `full_auth_machine_verification.json`：完整数据体的原始认证指令执行结果。
- `raw_output_machine_verification.json`：RAW 选择路径模拟结果。
- `update_route_verification.json`：升级包解析器模拟结果。
- `final_verification.json`、`SHA256SUMS.txt`：汇总及文件哈希。

构建脚本位于 `../../work/feature_scan/build_authenticated_raw_only.py`；
验证脚本位于同一目录。构建使用先前读取并保存的启动认证数据；本次无需连接相机。

完整候选固件 SHA-256：

`f3e4fa07de6a8818d4bbf1ef65cb3ee5b7954bee8a353fd9b65ca7b7e4e9b11e`
'''
(OUT / 'README.md').write_text(readme, encoding='utf-8')
files = sorted(p for p in OUT.iterdir() if p.is_file() and p.name != 'SHA256SUMS.txt')
(OUT / 'SHA256SUMS.txt').write_text(''.join(f'{sha(p)}  {p.name}\n' for p in files), encoding='utf-8')
print(json.dumps(final, indent=2))
