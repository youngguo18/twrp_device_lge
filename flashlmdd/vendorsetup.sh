#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# 关于橙狐变量详见 OrangeFox_10/fox_10.0/vendor/recovery/orangefox_build_vars.txt

	export LC_ALL="C"
	export ALLOW_MISSING_DEPENDENCIES=true

	echo -e "\x1b[100mflashlmdd: 开始添加OrangeFox Vars...\x1b[m"
	## 构建信息
	# 设置显示在关于页面里的维护人员名称
	export OF_MAINTAINER=youngguo
	# 设置版本号为日期
	export FOX_VERSION=$(date +%y.%m.%d)

	## 添加功能
	# 使用完整版ps命令
	export FOX_REPLACE_BUSYBOX_PS=1
	# 使用完整版getprop命令
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	# 支持tar命令
	export FOX_USE_TAR_BINARY=1
	# 支持sed命令
	export FOX_USE_SED_BINARY=1
	# 使用bash代替sh和ash
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	# 使用完整版grep命令
	export FOX_USE_GREP_BINARY=1
	# 支持lzma, xz命令
	export FOX_USE_XZ_UTILS=1
	# 使用橙狐编译的NANO编辑器
	export FOX_USE_NANO_EDITOR=1
	# 添加phhusson's lptools工具
	export OF_ENABLE_LPTOOLS=1

	# 使橙狐可以刷入具有机型检测限制，与TARGET_OTA_ASSERT_DEVICE冲突
	# export OF_TARGET_DEVICES="flashlmdd"


	echo -e "\x1b[100mflashlmdd: 当你看到这个消息的时候，所有的OrangeFox Var已经添加完毕！\x1b[m"
