#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' openwrt/package/base-files/files/bin/config_generate

git clone https://github.com/Lienol/openwrt-package
mv openwrt-package/lienol/* packages
rm -rf packages/shadowsocks-libev-new
rm -rf packages/shadowsocksr-libev
rm -rf packages/v2ray
sed -i 's/bootstrap/material/g' openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i 's/ built by Lean & KFERM//g' openwrt/package/lean/default-settings/files/zzz-default-settings
