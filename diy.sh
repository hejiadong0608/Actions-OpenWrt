#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' openwrt/package/base-files/files/bin/config_generate

mkdir packages
git clone https://github.com/Lienol/openwrt-package.git packages/lienol
rm -rf packages/lienol/lienol/shadowsocks-libev-new
rm -rf packages/lienol/lienol/shadowsocksr-libev
rm -rf packages/lienol/lienol/v2ray
mkdir -p files/etc/config
echo  0xDEADBEEF > files/etc/config/google_fu_mode
sed -i 's/bootstrap/material/g' openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i 's/ built by Lean & KFERM//g' openwrt/package/lean/default-settings/files/zzz-default-settings
