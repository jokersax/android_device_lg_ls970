# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritanc

USE_CAMERA_STUB := true

# Platform
TARGET_BOARD_PLATFORM := APQ8064
TARGET_BOARD_PLATFORM_GPU := qcom-adreno320

# inherit from the proprietary version
-include vendor/lg/optimus_g/BoardConfigVendor.mk

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := 
TARGET_CPU_SMP := true
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_BOOTLOADER_BOARD_NAME := optimus_g

BOARD_KERNEL_CMDLINE := vmalloc=600M console=ttySHL0,115200,n8 lpj=67677 user_debug=31 msm_rtb.filter=0x0 ehci-hcd.park=3 androidboot.hardware=geehrc
BOARD_KERNEL_BASE := 0x80200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x81500000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lg/optimus_g/kernel
TARGET_KERNEL_CONFIG := j1sp-perf_defconfig
TARGET_KERNEL_SOURCE := kernel/lg/optimus_g

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
