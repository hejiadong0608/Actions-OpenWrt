#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

mkdir package/openwrt-packages
tar -xzf $GITHUB_WORKSPACE/luci-app-passwall.tgz
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
