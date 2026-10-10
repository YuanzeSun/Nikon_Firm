# Nikon Z6 II C1.70 HDMI RAW-only 固件

这是 Nikon Z6 II C1.70 的 **仅 HDMI RAW 功能**修改包。录像时长保持官方默认策略，没有加入 120 分钟修改。

完整操作路线、修改边界、校验方法和刷机记录见 [`docs/Z6II_C1.70_RAW-only_操作路线.md`](docs/Z6II_C1.70_RAW-only_操作路线.md)。

## 文件

- [`firmware/Z6II_C1.70_RAW_only/Z6_2_0170.bin`](firmware/Z6II_C1.70_RAW_only/Z6_2_0170.bin)：完整升级文件，文件名保持 `Z6_2_0170.bin`。
- [`firmware/Z6II_C1.70_RAW_only/SHA256SUMS.txt`](firmware/Z6II_C1.70_RAW_only/SHA256SUMS.txt)：文件哈希。
- [`docs/离线重建与数据索引.md`](docs/离线重建与数据索引.md)：已保存的读取值、原文件和重建方法。
- [`tools/raw_only.py`](tools/raw_only.py)：只使用 Python 标准库的离线构建、校验和解包工具，不连接相机。
- `inputs/`：官方原始 BIN、解码表和已读取的启动认证数据。
- `archive/`：原始分析脚本、RAM 读取与恢复记录、刷入前的历史校验报告。

## 这份包改了什么

- 版本、机型、容器布局和文件长度保持 C1.70 原值。
- 主程序只改 1 条 Thumb 指令（2 个字节）：`0x103c3128` 的 `01 d1` 改为 `00 bf`，跳过 HDMI RAW 能力选择器 `0x12` 的禁用分支。
- 完整 BIN 与原文件共差异 24 字节：指令 2 字节、主模块 CRC 2 字节、外层摘要 20 字节。
- 126 项录像时长表、录像引擎启动检查和特殊模式时长限制保持原值；普通录像上限仍为 1,799,000 ms（29 分 59 秒）。
- 按仓库所有者要求，在此私有仓库保存可复用的启动认证数据、读取证据和原始文件；未放入 120 分钟候选升级包。

## 校验值

```text
Z6_2_0170.bin
SHA-256: f3e4fa07de6a8818d4bbf1ef65cb3ee5b7954bee8a353fd9b65ca7b7e4e9b11e
大小: 49,002,888 字节
```

## 实机记录

用户反馈：Z6 II 当前为 C1.70，使用本仓库中的 RAW-only 文件完成刷入，刷入后无异常。该记录只证明本次机身的升级过程和基本运行没有出现问题；外接录机实际识别、录制和长时间稳定性仍应由使用者自行验证。

这是用户报告的结果，并非维护者独立测量。`archive/` 中标注 `HARDWARE_UNTESTED` 的报告是刷入前的原始记录，保留不改；最新反馈见 [`reports/user_feedback.json`](reports/user_feedback.json)。

## 离线复现

在仓库根目录运行（Python 3.10 或更高版本）：

```powershell
python tools/raw_only.py verify
python tools/raw_only.py build
```

`verify` 检查已发布文件；`build` 输出到 `build/Z6II_C1.70_RAW_only/`，拒绝覆盖已有目录。输出 BIN 的 SHA-256 必须与本页一致。此过程完全离线，不需要再次读取相机。

## 使用边界

这不是 Nikon 官方固件，也不等同于官方付费 RAW 激活。刷写前应确认文件哈希、保持电池充足、拔掉电脑 USB 连接，并在升级过程中保持供电和存储卡稳定。未验证故障恢复、官方回滚或后续官方升级。
