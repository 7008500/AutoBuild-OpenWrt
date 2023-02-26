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
sed -i '/spi-max-frequency/a\\t\tbroken-flash-reset;' openwrt/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i 's/0xf60000/0x1f60000/g' openwrt/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i 's/15744k/32448k/g' openwrt/target/linux/ramips/image/mt7621.mk
sed -i 's/sctapi.ftqq.com/sc.ftqq.com/g' openwrt/feeds/luci/applications/luci-app-serverchan/root/usr/bin/serverchan/api/serverchan.json
rm -rf openwrt/feeds/luci/themes/luci-theme-argon
git clone -b 18.06 https://github.com/7008500/luci-theme-argon openwrt/package/lean/luci-theme-argon
git clone https://github.com/brvphoenix/luci-app-wrtbwmon.git openwrt/package
