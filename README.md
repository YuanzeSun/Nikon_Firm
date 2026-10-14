# Nikon Z6 II C1.70 固件

## 固件

- `firmware/Z6II_C1.70_RAW_only/Z6_2_0170.bin`：仅开启 HDMI RAW。
- `firmware/Z6II_C1.70_RAW_120min_v3/Z6_2_0170.bin`：HDMI RAW + 120 分钟新版，含计数限制、索引和内存扩容；尚未实机长录。
- `firmware/Z6II_C1.70_RAW_120min_candidate/Z6_2_0170.bin`：旧半成品，只修改时长表和启动阈值，保留供对照。
- `inputs/official/Z6_2_0170.bin`：原始 C1.70 固件。

## 修改

RAW-only 只改 `0x103c3128` 的 2 字节指令：`01 d1` → `00 bf`。

120min v3 将普通录像时长改为 `7200000 ms`，同步扩展帧数、4K 50/60p 计数、MOV/MP4 样本表和录像内存。版本仍为 C1.70。

离线执行原固件指令，已检查两小时音视频索引、10 段续录和结束写出；完整更新包通过原认证程序。相机实际两小时录像尚未验证。原有最多 10 个文件的限制保留，4 GiB 切分时可能先达到段数上限。

地址、内存布局和重建方法见 [`docs/120min_v3.md`](docs/120min_v3.md)。

## 重建

```powershell
python tools/raw_only.py verify
python tools/raw_only.py build
python tools/build_120min_candidate.py
python tools/build_120min_v3.py verify
python tools/build_120min_v3.py build
```

构建脚本使用 `inputs/` 中保存的原始固件、启动认证数据和 XOR 表，不连接相机。

## 数据

后续修改所需的地址、哈希和读取值见 [`docs/development_index.md`](docs/development_index.md)。
