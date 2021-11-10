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
mkdir -p files/etc/config
echo  0xDEADBEEF > files/etc/config/google_fu_mode

cat files/etc/config/network <<EOF

config interface 'loopback'
	option ifname 'lo'
	option proto 'static'
	option ipaddr '127.0.0.1'
	option netmask '255.0.0.0'

config globals 'globals'
	option ula_prefix 'fd62:1e36:8d64::/48'

config interface 'lan'
	option type 'bridge'
	option ifname 'eth0'
	option proto 'static'
	option netmask '255.255.255.0'
	option ipaddr '192.168.3.3'
	option gateway '192.168.3.1'
	option dns '223.5.5.5 119.29.29.29'

EOF
