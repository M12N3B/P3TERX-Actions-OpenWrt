#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# 1. 修改預設後台 IP（改為 192.168.50.1，有效防止與光貓 192.168.1.1 衝突）
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 2. 修改預設主機名稱（登入後台或在網路上顯示的名字，改為 AX3000T）
sed -i 's/OpenWrt/AX3000T/g' package/base-files/files/bin/config_generate

# 3. 修改預設主題（可選：如果你在 .config 裡維持 bootstrap 則不用動這行）
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
