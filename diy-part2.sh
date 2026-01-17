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

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# 修改 MW4530R 16MB 闪存配置
sed -i 's/IMAGE_SIZE := 8192k/IMAGE_SIZE := 16064k/g' target/linux/ath79/image/generic.mk
sed -i 's/DEVICE_TITLE := Mercury MW4530R/DEVICE_TITLE := Mercury MW4530R (16MB Flash)/g' target/linux/ath79/image/generic.mk
# 清理冗余依赖
make clean
