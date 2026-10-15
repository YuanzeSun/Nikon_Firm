# Nikon Z6 II C1.70 固件

## 固件

- `firmware/Z6II_C1.70_RAW_only/Z6_2_0170.bin`：仅开启 HDMI RAW。
- `firmware/Z6II_C1.70_RAW_120min_v4/Z6_2_0170.bin`：HDMI RAW + 普通 24–60p 录像 120 分钟；启动内存配置保持原版，100/120p 保留原时长。
- `firmware/Z6II_C1.70_RAW_120min_v3/Z6_2_0170.bin`：旧扩容方案，修改启动内存池；保留供对照。
- `firmware/Z6II_C1.70_RAW_120min_candidate/Z6_2_0170.bin`：旧半成品，只修改时长表和启动阈值，保留供对照。
- `inputs/official/Z6_2_0170.bin`：原始 C1.70 固件。

## 修改

RAW-only 只改 `0x103c3128` 的 2 字节指令：`01 d1` → `00 bf`。

120min v4 将普通 24–60p 录像时长改为 `7200000 ms`，扩展帧数、4K 50/60p 计数，并在原 11,399,168 字节索引缓冲区内重新布局。版本仍为 C1.70。

启动池登记、堆大小和地址均保持原版；新布局仅接入录像文件初始化。已离线执行原固件指令检查两小时索引、10 段续录和认证。尚未实机验证 v4。最多 10 个文件的限制保留，4 GiB 切分时可能先达到段数上限。

地址、内存布局和重建方法见 [`docs/120min_v4.md`](docs/120min_v4.md)。

## 重建

```powershell
python tools/raw_only.py verify
python tools/raw_only.py build
python tools/build_120min_candidate.py
python tools/build_120min_v3.py verify
python tools/build_120min_v3.py build
python tools/build_120min_v4.py verify
python tools/build_120min_v4.py build
```

构建脚本使用 `inputs/` 中保存的原始固件、启动认证数据和 XOR 表，不连接相机。

## 数据

后续修改所需的地址、哈希和读取值见 [`docs/development_index.md`](docs/development_index.md)。
