# Z6 II C1.70 开发索引

## 文件

| 文件 | SHA-256 |
| --- | --- |
| `inputs/official/Z6_2_0170.bin` | `5a9640b4c07abe1ecbf5a52655cbec6b893bba045bb2a1a1d21055b9f8f9d06d` |
| `firmware/Z6II_C1.70_RAW_only/Z6_2_0170.bin` | `f3e4fa07de6a8818d4bbf1ef65cb3ee5b7954bee8a353fd9b65ca7b7e4e9b11e` |
| `firmware/Z6II_C1.70_RAW_120min_candidate/Z6_2_0170.bin` | `833a387669b9bbd47b6a9bfd2fd50015c79c1ca172c6b4e5bd141ccb89d99a3a` |
| `firmware/Z6II_C1.70_RAW_120min_v3/Z6_2_0170.bin` | `ae38ec66372bbaf16609241a8408fe51c00160b757efbc6d7d0d820c0f288f85` |

原包大小：49,002,888 字节。版本：C 1.70。

## 认证数据

`inputs/boot/boot_auth_10000088.bin` 保存的 8 字节：

```text
ba 3d 5c 39 7b f3 31 a9
```

摘要掩码：`e2 2b 5d 78 7c 69 3f fe`；重建后缀：`58 16 01 41 07 9a 0e 57`。

`inputs/nikon_xor_tables.json` 保存容器解码/编码所需的 3 张 256 项表。

## 主模块

主模块：`eg1850_mas_01700`，运行基址 `0x10020000`。

RAW 能力选择器：运行地址 `0x103c3128`，模块偏移 `0x3a3128`，`01 d1` 改为 `00 bf`。

录像时长表：`0x119eb760`，126 项；普通项原值 `1799000 ms`，120min 候选为 `7200000 ms`。录像启动阈值：`0x1048922c`，原值 `1798001`，候选为 `7199001`。特殊模式 `0x10478290 = 180000` 保持不变。

旧 `120min_candidate` 仍保留 4K 50/60p 的专用计数（3596/3749）和视频样本表容量（216000 项）。v3 已处理这些位置，并扩展音频、时间戳和内存分配，详见 [`120min_v3.md`](120min_v3.md)。

## 升级路线

1. 从 `firmware/` 选择目标包，将文件复制到存储卡根目录，文件名保持 `Z6_2_0170.bin`。
2. 断开 USB，将存储卡插入相机，在固件版本菜单中选择更新并确认；电量须满足相机检查。
3. 更新完成后，按相机提示结束流程，并删除存储卡中的更新文件。

## 重建脚本

- `tools/raw_only.py`：解码、校验、提取模块和重建 RAW-only 包。
- `tools/build_120min_candidate.py`：从同一组输入重建 120min 候选包。
- `tools/build_120min_v3.py`：校验或重建 v3，读取 `tools/patches/z6ii_170_raw_120min_v3.json` 中的完整补丁。
- `tools/patches/recording_layout_v3.asm`：新增 Thumb 代码的汇编片段，布局数据和原函数重定位记录在同目录 JSON 中。
