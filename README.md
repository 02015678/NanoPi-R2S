# 使用 Github Actions 在线编译 NanoPi-R2S 固件

[![NanoPi-R2S RK3328 OpenWrt 19.07 Build](https://github.com/02015678/NanoPi-R2S/workflows/NanoPi-R2S%20RK3328%20OpenWrt%2019.07%20Build/badge.svg)](https://github.com/02015678/NanoPi-R2S/actions?query=workflow%3A%22NanoPi-R2S+RK3328+OpenWrt+19.07+Build%22) 

* NanoPi R2S CNC 官方金属壳版 购买链接: [友善电子 FriendlyElec FriendArm 官方淘宝店](https://item.taobao.com/item.htm?id=611901481535) 
* This Repo is forked from [soffchen](https://github.com/soffchen/NanoPi-R2S), [klever1988](https://github.com/klever1988/nanopi-openwrt), and [songchenwen](https://github.com/songchenwen/nanopi-r2s)

## 说明
* 管理 IP: 192.168.2.1
* 默认管理密码: password

## 特色
可能你会有这样的烦恼，其他的Repo要么是基于Lean的，要么是基于Lieno的，要么有A没有B，要么有B没有A。
不同于其他Repo倾向于定时自动编译Lean、Lieno大神的固件并分别发布，本Repo希望能提供单一入口的ROM，集成更多的插件。
在编译出一个可供折腾的臃肿FatROM之后，会考虑再编译出几个精简的ThinROM以减小ROM大小、减小功耗和增强稳定性。

以下是FatROM的特性：
* 支持 RTL8821CU/RTL8822BU 芯片的 USB WiFi 设备，已知支持列表：
    - [COMFAST 726B](https://u.jd.com/KmtGTP)
    - [COMFAST CF-759BF](https://u.jd.com/AiZit7)
* 集成 [frainzy1477/luci-app-clash](https://github.com/frainzy1477/luci-app-clash) 及其 clash bin（CONFIG_PACKAGE_luci-app-clash 默认没开启）
* 集成 [vernesong/OpenClash](https://github.com/vernesong/OpenClash) 及其 clash bin
* 集成 ssr-p1us, passw@1l from [xiaorouji/packages](https://github.com/xiaorouji/packages) 
* 集成 [rufengsuixing/luci-app-adguardhome](https://github.com/rufengsuixing/luci-app-adguardhome)（CONFIG_PACKAGE_luci-app-adguardhome 默认没开启）
* 集成 [xiaorouji/packages](https://github.com/xiaorouji/packages), [coolsnowwolf/luci](https://github.com/coolsnowwolf/luci) 与 [coolsnowwolf/lede/package/lean](https://github.com/coolsnowwolf/lede/tree/master/package/lean)
* 更新 [jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)
* 集成 [luci-app-r2sflasher](https://github.com/songchenwen/nanopi-r2s/tree/master/luci-app-r2sflasher)
* 集成 [pymumu/smartdns](https://github.com/pymumu/smartdns) 与 luci-app-smartdns
* 集成 [kenzok8/openwrt-packages](https://github.com/kenzok8/openwrt-packages)的advancedsetting, aliddns, eqos, passwall

## 用法
* 如果只是想下载固件拿去直接用，请点击Actions，找到最近一次成功的编译，下载Artifact栏中的zip包到本机，解压缩再解压缩直到看到img镜像。将img格式镜像刷入TF卡。TF卡如果之前刷过类似系统，建议使用第三方格式化工具将整个优盘所有盘符删除并格式化。（Windows不支持删除优盘的分区表。）
* 如果你想基于此repo自己加以定制，很好，请先Fork 到自己的账号下
* 进入 Actions 界面，启用 Github Actions (**必须要先启用**)
* 编辑文件 `CHANGELOG.md` 即可触发编译动作。

## 注意
* 官方代码每天都在变，遇到无法编译时，请前往[soffchen/NanoPi-R2S](https://github.com/soffchen/NanoPi-R2S)查看 `.yml` 与 `config` 最新异动。
* 自己添加src-git要极为注意，小心选择使用的branch，尽量少添加src-git到feed以减少编译时间。

## 参考
* [使用Github的Actions功能在线编译NanoPi-R1S固件（包含H5和H3）](https://totoro.site/index.php/archives/70/)
* [soffchen/NanoPi-R2S](https://github.com/soffchen/NanoPi-R2S)
* [klever1988/nanopi-openwrt](https://github.com/klever1988/nanopi-openwrt)
* [songchenwen/nanopi-r2s](https://github.com/songchenwen/nanopi-r2s)
* [fanck0605/nanopi_r2s](https://github.com/fanck0605/nanopi_r2s)
