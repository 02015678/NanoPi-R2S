## 20200807
* ~~Make symbolic link for lua5.3 --> lua in yml flow file~~
* ~~Correct src-git packages in yml file, specify branch **openwrt-19.07** for [coolsnowwolf/packages](https://github.com/coolsnowwolf/packages)~~
* Enable luci-app-haproxy-tcp, luci-app-privoxy in config
* Replace [coolsnowwolf/packages](https://github.com/coolsnowwolf/packages), [coolsnowwolf/luci](https://github.com/coolsnowwolf/luci) with [openwrt/packages](https://github.com/openwrt/packages), [Lienol/openwrt-luci](https://github.com/Lienol/openwrt-luci)
* Replace [kenzok8/small](https://github.com/kenzok8/small) with [xiaorouji/openwrt-package](https://github.com/xiaorouji/openwrt-package)

**Why remove coolsnowwolf src-git? **
* master branch of coolsnowwolf/packages/net/haproxy require lua5.3 but it does not provide lua5.3. Good version is on openwrt-19.07 branch instead.
* openwrt-19.07 branch of coolsnowwolf/packages/utils/coreutils conflict with busybox. ILatest fix on coreutils is on master branch instead.

## 20200806
Since chunk's kernel is no longer maintained, do not use chunk's kernel.
Since songchenwen's OPKG feed can be added after compilation during daily use, remove feed.
Since friendlywrt update regularly, no need to copy openwrt/lib
Change List:
* Enable ipv6helper, dhcpv6
* install lua5.3 liblua5.3 during env prepare, it is required by new version haproxy
* ~~Use Chunk's Kernel~~
* ~~Use lib from openwrt/openwrt~~
* ~~Add songchenwen's repo~~
* Add luci-app-serverchan

## 20200805
* fork from [songchenwen/nanopi-r2s](https://raw.githubusercontent.com/songchenwen/nanopi-r2s)
* 加入了 [luci-app-r2sflasher](luci-app-r2sflasher), 可以图形化刷机了。
* 有了[专为 NanoPi R2S 准备的软件源](https://songchenwen.com/nanopi-r2s-opkg-feeds/packages)。缺少的包可以自行从源里安装了。
* add extra packages luci-app-smartdns luci-app-advancedsetting luci-app-aliddns luci-app-eqos luci-app-passwall from [kenzok8](https://github.com/kenzok8/openwrt-packages)
* add back [jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)

## 20200804
* fork from [soffchen/NanoPi-R2S](https://github.com/soffchen/NanoPi-R2S)
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
