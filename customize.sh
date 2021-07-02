#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/<spi-max-frequency = <80000000>>/<spi-max-frequency = <10000000>>/g' openwrt/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i 's/<m25p,fast-read>/<broken-flash-reset>/g' openwrt/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i 's/<0xa0000 0xf60000>/<0xa0000 0x1fb0000>/g' openwrt/target/linux/ramips/dts/mt7621_phicomm_k2p.dts
sed -i 's/15744k/32448k/g' openwrt/target/linux/ramips/image/mt7621.mk
sed -i 's/<kmod-mt7615d luci-app-mtwifi -wpad-openssl>/<kmod-mt7615d_dbdc -wpad-openssl>/g' openwrt/target/linux/ramips/image/mt7621.mk
git clone https://github.com/tty228/luci-app-serverchan.git openwrt/package/luci-app-serverchan
git clone https://github.com/destan19/OpenAppFilter.git openwrt/package/OpenAppFilter
rm -rf openwrt/package/lean/luci-theme-argon 
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon openwrt/package/luci-theme-argon
