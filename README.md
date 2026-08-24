# Actions-LEDE-B70

基于 [Actions-LEDE](https://github.com/zgc0220/Actions-LEDE)（base）维护的 HiWiFi HC5962（极路由 B70）固件仓库。构建逻辑、CI 和公共组件全部继承 base，本仓库只维护设备差异。默认直接跟随 ImmortalWrt `master` 最新提交，让上游修复自动进入构建；`upstream.lock`/`REPO_COMMIT` 仅用于临时固定候选版本验证。

## 设备

- 平台：ramips / mt7621
- 型号：HiWiFi HC5962（B70）
- 闪存：NAND，固件产物为 `sysupgrade.bin` / `factory.bin`
- 刷写：通过 LuCI sysupgrade 或 factory 映像刷入，不适用 dd 整盘写入

## 仓库边界

- 与 base 同步：`git fetch base main && git rebase base/main`
- 设备文件：`config.seed`（ramips 目标与设备包）、`openwrt-device.conf`（发布名和运行参数）
- 本仓库默认无 `files/`；设备运行时配置按需从实机迁移
- packages feed 暂用兼容 pin（pre-golang-1.27）；上游合并后应随 base 清理固定值。

## 构建

与 base 相同，使用 Docker 构建：

```bash
cd docker
docker compose up build
```

产物位于 `release/`：`b70.bin`（或 `b70.bin.gz`）、manifest、config.buildinfo 与校验文件。
