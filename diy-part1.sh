#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

rm -rf package/lean/luci-lib-docker

# Add a feed source
sed -i 's/#src-git helloworld/src-git helloworld/g' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package.git;main' feeds.conf.default
sed -i '$a src-git diy1 https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
git clone https://github.com/tty228/luci-app-serverchan ./package/luci-app-serverchan
git clone https://github.com/lisaac/luci-app-dockerman ./package/luci-app-dockerman
git clone https://github.com/lisaac/luci-lib-docker ./package/lean/luci-lib-docker
git clone https://github.com/KFERMercer/luci-app-tcpdump.git ./package/luci-app-tcpdump
