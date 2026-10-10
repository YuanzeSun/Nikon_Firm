# Nikon Z6 II C1.70 固件

## 固件

- `firmware/Z6II_C1.70_RAW_only/Z6_2_0170.bin`：仅开启 HDMI RAW。
- `firmware/Z6II_C1.70_RAW_120min_candidate/Z6_2_0170.bin`：HDMI RAW + 普通录像 120 分钟候选包。
- `inputs/official/Z6_2_0170.bin`：原始 C1.70 固件。

## 修改

RAW-only 只改 `0x103c3128` 的 2 字节指令：`01 d1` → `00 bf`。

120min 候选在此基础上把普通录像时长表改为 `7200000 ms`，并把录像启动阈值改为 `7199001 ms`。4K 50/60p 专用包计数和文件索引容量没有修改。

## 重建

```powershell
python tools/raw_only.py verify
python tools/raw_only.py build
python tools/build_120min_candidate.py
```

构建脚本使用 `inputs/` 中保存的原始固件、启动认证数据和 XOR 表，不连接相机。

## 数据

后续修改所需的地址、哈希和读取值见 [`docs/development_index.md`](docs/development_index.md)。
