#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

git clone https://github.com/Lienol/openwrt-package
mv openwrt-package/lienol package/openwrt-packages
rm -rf package/openwrt-packages/shadowsocks-libev-new
rm -rf package/openwrt-packages/shadowsocksr-libev

sed -i 's/bootstrap/material/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/ built by Lean & KFERM//g' package/lean/default-settings/files/zzz-default-settings
mkdir -p files/etc/config
echo  0xDEADBEEF > files/etc/config/google_fu_mode
sed -i 's/20190515/20191127/g' package/lean/kcptun/Makefile
