# Kernel Patches 說明

本資料夾包含針對 Linux Kernel 的修改 patch，供符合 GPLv2 條款之釋出使用。

## Patch 說明

- `0001-demo-kernel-change.patch`：展示如何在 boot log 中加入 printk。
- 基礎版本：Linux 5.10.y
- Patch 套用方式：
  patch -p1 < 0001-demo-kernel-change.patch

