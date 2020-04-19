#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

mkdir package/openwrt-packages
tar -xzf ../luci-app-passwall.tgz
mv luci-app-passwall package/openwrt-packages
git clone https://github.com/Lienol/openwrt-package
mv openwrt-package/lienol/* package/openwrt-packages
mv openwrt-package/package/* package/openwrt-packages
mv openwrt-package/others/* package/openwrt-packages
rm -rf package/openwrt-packages/v2ray
rm -rf package/openwrt-packages/v2ray-plugin
rm -rf package/openwrt-packages/trojan
rm -rf package/openwrt-packages/shadowsocksr-libev
rm -rf package/openwrt-packages/pdnsd-alt
rm -rf package/openwrt-packages/kcptun
rm -rf package/openwrt-packages/simple-obfs
rm -rf package/openwrt-packages/verysync
rm -rf package/lean/luci-app-kodexplorer
rm -rf package/lean/ipt2socks
rm -rf package/lean/luci-app-pppoe-relay
rm -rf package/lean/luci-app-v2ray-server
rm -rf package/openwrt-packages/luci-app-verysync

sed -i 's/bootstrap/material/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/ built by Lean & KFERM//g' package/lean/default-settings/files/zzz-default-settings
mkdir -p files/etc/config
echo  0xDEADBEEF > files/etc/config/google_fu_mode
# sed -i 's/20190515/20191127/g' package/lean/kcptun/Makefile
