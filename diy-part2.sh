#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

sed -i 's/bootstrap/material/g' package/lean/default-settings/files/zzz-default-settings
sed -i 's/\/bin\/ash/\/bin\/bash/' package/base-files/files/etc/passwd    # 替换终端为bash

rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb,tailscale}
rm -rf feeds/packages/net/{tailscale,brook,chinadns-ng,dns2socks,dns2tcp,geoview,gn,hysteria,ipt2socks,microsocks,naiveproxy,pdnsd-alt,shadowsocks-libev,shadowsocksr-libev,shadowsocks-rust,simple-obfs,sing-box,ssocks,tcping,trojan,trojan-go,trojan-plus,tuic-client,v2ray-core,v2ray-geodata,v2ray-plugin,xray-core,xray-plugin}
rm -rf feeds/luci/applications/luci-app-passwall
git clone https://github.com/openwrt/packages
mv packages/net/tailscale feeds/packages/net
sed -i "s/'nftables'/'iptables'/" feeds/packages/net/tailscale/files/tailscale.conf
rm -rf packages
./scripts/feeds update -ai
# mkdir -p files/etc/config
# echo  0xDEADBEEF > files/etc/config/google_fu_mode
