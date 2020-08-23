# 使用 Github Actions 在线编译 NanoPi-R2S 固件

[![NanoPi-R2S_Openwrt1907_Fat](https://github.com/02015678/NanoPi-R2S/workflows/NanoPi-R2S%20RK3328%20OpenWrt%2019.07%20Fat%20Build/badge.svg)](https://github.com/02015678/NanoPi-R2S/actions?query=workflow%3A%22NanoPi-R2S+RK3328+OpenWrt+19.07+Fat+Build%22) 
[![NanoPi-R2S_Openwrt1907_Thin](https://github.com/02015678/NanoPi-R2S/workflows/NanoPi-R2S%20RK3328%20OpenWrt%2019.07%20Thin%20Build/badge.svg)](https://github.com/02015678/NanoPi-R2S/actions?query=workflow%3A%22NanoPi-R2S+RK3328+OpenWrt+19.07+Thin+Build%22) 

* NanoPi R2S CNC 官方金属壳版 购买链接: [友善电子 FriendArm 官方淘宝店](https://item.taobao.com/item.htm?id=611901481535) 
* This Repo is forked from [soffchen](https://github.com/soffchen/NanoPi-R2S), [klever1988](https://github.com/klever1988/nanopi-openwrt), and [songchenwen](https://github.com/songchenwen/nanopi-r2s)


## 写在最前面的话
本repo是基于友善电子官方的源代码，加上部分来自lean和lienol的包组成的。因为友善电子官方的固件比较大，所以固件最后img file都会有超过900MB。
鉴于Openwrt已经于7月28日官方支持NanoPi-R2S，因此现在建议直接使用基于官方Openwrt的固件，请移步[02015678/R2S-OpenWrt](https://github.com/02015678/R2S-OpenWrt)。
基于官方Openwrt的固件，更新更快(跟随Openwrt主线更新)、体积更小(img仅100MB出头)、维护的人更多(直接受惠于Openwrt主线)。有鉴于此，基于友善电子源代码的本repo不再维护。

## 说明
* 请根据需要选择使用更多插件功能的Fat ROM，或者仅包含必备插件功能的Thin ROM。
* 管理 IP: 192.168.2.1
* 默认管理密码: password

## Fat ROM 特色
可能你会有这样的烦恼，其他的Repo要么是基于Lean的，要么是基于Lieno的，要么有A没有B，要么有B没有A。
不同于其他Repo倾向于定时自动编译Lean、Lieno大神的固件并分别发布，本Repo希望能提供单一入口的ROM，集成更多的插件。

以下是Fat ROM的特性：
* 支持 RTL8821CU/RTL8822BU 芯片的 USB WiFi 设备，已知支持列表：[COMFAST 726B](https://u.jd.com/KmtGTP), [COMFAST CF-759BF](https://u.jd.com/AiZit7)
* 集成 [vernesong/OpenClash](https://github.com/vernesong/OpenClash)，其 clash binary 存储到/etc/openclash/core
* 集成 [xiaorouji/packages](https://github.com/xiaorouji/packages), [coolsnowwolf/luci](https://github.com/coolsnowwolf/luci) 与 [coolsnowwolf/lede/package/lean](https://github.com/coolsnowwolf/lede/tree/master/package/lean)，站在巨人的肩膀上
* 更新 [jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)，简介但又耐看的主题
* 集成 [jerrykuku/luci-app-jd-dailybonus](https://github.com/jerrykuku/luci-app-jd-dailybonus)，签到拿京豆！
* 集成 [pymumu/smartdns](https://github.com/pymumu/smartdns) 与 luci-app-smartdns
* 集成 [pexcn/openwrt-chinadns-ng](https://github.com/pexcn/openwrt-chinadns-ng) 与 luci-app-chinadns-ng
* 集成 [kenzok8/openwrt-packages](https://github.com/kenzok8/openwrt-packages)的advancedsetting, aliddns, 酸酸乳、怕死我
* 集成 ssr-p1us, passw@1l 的依赖关系 from [xiaorouji/packages](https://github.com/xiaorouji/packages) 
* 集成 vim-full, nano 文本编辑器，关闭 busybox阉割版vim
* 集成 [luci-app-r2sflasher](https://github.com/songchenwen/nanopi-r2s/tree/master/luci-app-r2sflasher)
* 集成 [rufengsuixing/luci-app-adguardhome](https://github.com/rufengsuixing/luci-app-adguardhome)
* Openvpn, IPsec, ZeroTier，uHTTPd, udpxy, HAProxy, NPS, FRP, ServerChan, Docker, 挂载点， TTYD， 磁盘自动休眠，文件传输

## Thin ROM 特色
你已经厌倦了Openwrt里的一堆插件，我的要求很简单，默认内置最常用的就行了。其他可以自己去装，OK，那么Thin ROM将会是你的选择。

以下是Thin ROM的特性：
* 支持 RTL8821CU/RTL8822BU 芯片的 USB WiFi 设备，已知支持列表：[COMFAST 726B](https://u.jd.com/KmtGTP), [COMFAST CF-759BF](https://u.jd.com/AiZit7)
* 集成 [xiaorouji/packages](https://github.com/xiaorouji/packages), [coolsnowwolf/luci](https://github.com/coolsnowwolf/luci) 与 [coolsnowwolf/lede/package/lean](https://github.com/coolsnowwolf/lede/tree/master/package/lean)，站在巨人的肩膀上
* 更新 [jerrykuku/luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)，简介但又耐看的主题
* 集成 [pymumu/smartdns](https://github.com/pymumu/smartdns) 与 luci-app-smartdns
* 集成 [pexcn/openwrt-chinadns-ng](https://github.com/pexcn/openwrt-chinadns-ng) 与 luci-app-chinadns-ng
* 集成 [kenzok8/openwrt-packages](https://github.com/kenzok8/openwrt-packages)的advancedsetting, 怕死我
* 集成 passw@1l 的依赖关系 from [xiaorouji/packages](https://github.com/xiaorouji/packages) 
* 集成 [rufengsuixing/luci-app-adguardhome](https://github.com/rufengsuixing/luci-app-adguardhome)
* ServerChan, 挂载点， TTYD， 磁盘自动休眠，文件传输

## 用法
* 如果只是想下载固件拿去直接用，请点击Releases，找到最近一次成功的编译，下载Assets栏中的zip包到本机，解压缩再解压缩直到看到img镜像。将img格式镜像刷入TF卡。TF卡如果之前刷过类似系统，建议使用第三方格式化工具将整个优盘所有盘符删除并格式化。（Windows不支持删除优盘的分区表。）
* 如果你想基于此repo自己加以定制，很好，请先Fork 到自己的账号下
* 进入 Actions 界面，启用 Github Actions (**必须要先启用**)
* 编辑文件 `CHANGELOG.md` 即可触发编译动作。

## 注意
* 遇到无法编译时，请参考其他类似repo是怎么写的flow：[soffchen/NanoPi-R2S](https://github.com/soffchen/NanoPi-R2S), [klever1988](https://github.com/klever1988/nanopi-openwrt), and [songchenwen](https://github.com/songchenwen/nanopi-r2s) 
* 自己添加src-git要极为注意，小心选择使用的branch，尽量少添加src-git到feed以减少编译时间。
* 在防火墙中添加以下自定义规则放行IPv6流量（如果你的网络有IPv6的话）
```
# 定义 IPv6 WAN 接口名（Linux）
iface_linux=pppoe-wan
# 建立 IPv6 NAT
ip6tables -t nat -A POSTROUTING -o $iface_linux -j MASQUERADE
```
## 关于DNS
参见：https://www.cnblogs.com/zlAurora/p/12433266.html

建议关闭系统自带dnsmasq，使用AdguardHome作为主DNS服务器，其上游服务器为ChinaDNS-NG。
ChinaDNS-NG对DNS请求进行高效的分流，境内域名转交上游SmartDNS第一端口，境外域名转交上游SmartDNS第二端口。
最后在SmartDNS中配置境内上游服务器和境外上游服务器，境外服务器请一律使用DNS over TLS或者DNS over HTTPS连接。
SmartDNS第一端口，开启速度优选(返回最快IP)、双栈优选、黑名单过滤；SMartDNS第二端口，关闭速度优选(返回全部IP)，IPv6强制SOA。

这套方案境内域名解析非常快，且EDNS可以有效帮你找到最快的服务器；境外域名直送境外DNS，利用DOT、DOH保证结果可采信。

- 推荐使用的境内DNS服务器：腾讯DNSPOD (119.29.29.29)、阿里巴巴(223.5.5.5)、百度(180.76.76.76)，以及运营商的DNS服务器
- 不建议使用境内DNS服务器：CNNIC (1.2.4.8)、南京信风 (114.114.114.114)
- 推荐使用的境外DNS服务器：Google (8.8.8.8), CloudFlare (1.1.1.1), IBM (9.9.9.9)
- 不建议使用境外DNS服务器：OpenDNS

推荐的理由相信不用多说，那么不推荐的理由：
- CNNIC：嗯有黑历史，其数字证书被Google、Mozilla Firefox和Microsoft通通撤销信任了
- 南京信风：优点是IP太好记了，但其实响应速度没有腾讯阿里快，可靠性也略逊一筹
- OpenDNS：这个真的佛了，拿不到正确的结果，即使你用DOH。

配置好这套系统后，注意其他自带DNS分流代理之类的插件，就不要开启类似功能了，避免冲突。

## 参考
* [使用Github的Actions功能在线编译NanoPi-R1S固件（包含H5和H3）](https://totoro.site/index.php/archives/70/)
* [soffchen/NanoPi-R2S](https://github.com/soffchen/NanoPi-R2S)
* [klever1988/nanopi-openwrt](https://github.com/klever1988/nanopi-openwrt)
* [songchenwen/nanopi-r2s](https://github.com/songchenwen/nanopi-r2s)
* [fanck0605/nanopi_r2s](https://github.com/fanck0605/nanopi_r2s)
