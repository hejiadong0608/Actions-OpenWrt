#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

sed -i 's/bootstrap/material/g' openwrt/package/lean/default-settings/files/zzz-default-settings
sed -i 's/ built by Lean & KFERM//g' openwrt/package/lean/default-settings/files/zzz-default-settings
mkdir -p openwrt/files/etc/config
echo  0xDEADBEEF > openwrt/files/etc/config/google_fu_mode
rm -rf openwrt/package/lean/kcptun
