#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# 1. 註釋掉或刪除原本的 helloworld 源（既然要換 OpenClash，就不需要重疊的代理插件了）
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# 2. 直接拉取最新版 OpenClash 原始碼並精確放入 package 目錄中
git clone --depth=1 -b master https://github.com/vernesong/OpenClash.git package/openclash-temp
mv package/openclash-temp/luci-app-openclash package/luci-app-openclash
rm -rf package/openclash-temp
