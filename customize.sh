#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/192.168./10.0./g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/80000000/10000000/g' openwrt/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i 's/m25p,fast-read/broken-flash-reset/g' openwrt/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i 's/0xf60000/0x1f60000/g' openwrt/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i 's/15744k/32448k/g' openwrt/target/linux/ramips/image/mt7621.mk
git clone https://github.com/7008500/luci-app-argon-config openwrt/package/luci-app-argon-config
git clone https://github.com/7008500/luci-app-serverchan openwrt/package/luci-app-serverchan
sed -i 's/sctapi.ftqq.com/sc.ftqq.com/g' openwrt/package/luci-app-serverchan/root/usr/bin/serverchan/api/serverchan.json
git clone https://github.com/7008500/OpenAppFilter openwrt/package/OpenAppFilter
git clone https://github.com/7008500/luci-app-unblockneteasemusic openwrt/package/luci-app-unblockneteasemusic
rm -rf openwrt/package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/7008500/luci-theme-argon openwrt/package/lean/luci-theme-argon
