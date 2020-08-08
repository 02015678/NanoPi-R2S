## 20200808
* **ROM download available! Goto actions and find artifact section to download.**
* 本次成功出ROM是集成了尽可能多的插件的目的，先搞定最难的，最容易有冲突的。接下来会考虑出其他几个精简的版本。
* change runs-on from `ubuntu-latest` to `ubuntu-18.04`
* switch back to coolsnowwolf/packages src-git, branch master (for newer version of ffmpeg and other packages).
* ffmpeg=y, libffmpeg-full=y, fdk-aac=y,  libx264 is not set. Refer to reported [issue](https://github.com/openwrt/packages/issues/13053).
* turn-off switch of coreutils in config file (sort, base64, nohup), turn-on correponding switch of busybox. (coolsnowwolf/package does not fetch latest fix of coreutils/Makefile). Refer to reported [issue](https://github.com/coolsnowwolf/packages/issues/77).
* copy lua5.3 from coolsnowwolf/lede/package/utils/lua5.3 to satisfy dependency requirement for new version of haproxy. Refer to reported [issue](https://github.com/coolsnowwolf/packages/issues/77).


## 20200807
* ~~Make symbolic link for lua5.3 --> lua in yml flow file~~
* ~~Correct src-git packages in yml file, specify branch **openwrt-19.07** for [coolsnowwolf/packages](https://github.com/coolsnowwolf/packages)~~
* Enable luci-app-haproxy-tcp, luci-app-privoxy in config
* ~~Replace [coolsnowwolf/packages](https://github.com/coolsnowwolf/packages) with [openwrt/packages](https://github.com/openwrt/packages)~~
* Replace [kenzok8/small](https://github.com/kenzok8/small) with [xiaorouji/openwrt-package](https://github.com/xiaorouji/openwrt-package)

## 20200806
* Enable ipv6helper, dhcpv6
~~* install lua5.3 liblua5.3 during env prepare, it is required by new version haproxy~~
* ~~Use Chunk's Kernel~~ Since chunk's kernel is no longer maintained, do not use chunk's kernel.
* ~~Use lib from openwrt/openwrt~~ Since friendlywrt update regularly, no need to copy openwrt/lib
* ~~Add songchenwen's repo~~ Since songchenwen's OPKG feed can be added after compilation during daily use, remove feed.
* Add luci-app-serverchan

## 20200805
* add [luci-app-r2sflasher](https://github.com/songchenwen/nanopi-r2s/tree/master/luci-app-r2sflasher) for rom update over GUI
* add extra packages luci-app-smartdns luci-app-advancedsetting luci-app-aliddns luci-app-eqos luci-app-passwall from [kenzok8](https://github.com/kenzok8/openwrt-packages)

## 20200804
* **fork** from [soffchen/NanoPi-R2S](https://github.com/soffchen/NanoPi-R2S)
* change `self-hosted` to `ubuntu-latest`

## 20200723
* Docker

## 20200718
* Kernel 5.4.50
* Clash 更新到 1.0.0

## 20200515
* Kernel 5.4.40
* 支持 RTL8812AU

## 20200509
* 修正 Clash 二进制文件权限
* 修正 luci-app-clash 在 menuconfig 的分类
* 将 luci-app-openvpn 菜单项移至 vpn

## 20200508
* 集成 smartdns
* 集成 luci-app-smartdns
* Clash 更新到 0.20.0

## 20200418
* 集成 luci-app-r2sflasher

## 20200417
* 重新整理 yml
* 因应上游调整

## 20200403
* Kernel 5.4.29

## 20200329
* 移除 Flow Offloading 补丁

## 20200326
* 默认不开启 Full Cone NAT 与 Flow Offloading

## 20200311
* 添加 xt_FLOWOFFLOAD
* 添加 RTL8821CU 源代码

## 20200308
* 只允许从 LAN 访问 SSH
* 更换 luci-app-unblockmusic

## 20200229
* 官方修复每次重启 Mac 地址变化问题

## 20200227
* 支持 RTL8821CU 芯片的 USB WiFi 设备，已知支持列表：
    - [COMFAST 726B](https://u.jd.com/DOkkhX)
    - [COMFAST CF-759BF](https://u.jd.com/C2ivH7)
* 官方 Kernel 更新到 5.4.22
* 更新 argon 主题 
* 官方修复 LED 问题

## 20200226
* 添加 frpc 和 npc
* 支持 Full Cone NAT

test new action 3
