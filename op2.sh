#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-op2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#=================================================
sed -i '/set lan_ifname=eth0/a\
        set lan_proto=dhcp' package/base-files/files/bin/config_generate
# 2. 删除原LAN口静态IP/子网掩码/网关配置
sed -i '/set lan_ipaddr=/d' package/base-files/files/bin/config_generate
sed -i '/set lan_netmask=/d' package/base-files/files/bin/config_generate
sed -i '/set lan_gateway=/d' package/base-files/files/bin/config_generate
sed -i '/set lan_dns=/d' package/base-files/files/bin/config_generate
