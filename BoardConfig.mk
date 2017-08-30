# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from SCX35 common configs
-include device/samsung/scx35-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/samsung/grandprimeve3g/BoardConfigVendor.mk

# JACK
ANDROID_COMPILE_WITH_JACK := false

# RIL
BOARD_RIL_CLASS += ../../../device/samsung/grandprimeve3g/ril

# System properties
TARGET_SYSTEM_PROP += device/samsung/grandprimeve3g/system.prop

# Hardware-specific
SOC_SCX30G_V2 := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/grandprimeve3g/bluetooth

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5872025600
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Kernel
BOARD_KERNEL_CMDLINE  := console=ttyS1,115200n8 androidboot.selinux=permissive
BOARD_KERNEL_BASE     := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS  := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/grandprimeve3g/dt.img
TARGET_KERNEL_CONFIG := sp7731gea-dt_defconfig
TARGET_KERNEL_SOURCE := kernel/sprd

# Resolution
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Assert
TARGET_OTA_ASSERT_DEVICE := SM-G531H,SM-G531BT,grandprimeve3g,grandprimeve3gdtv,grandprimeve3gub,grandprimeve3gxx,grandprimeve3gdtvvj

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/grandprimeve3g/rootdir/fstab.sc8830
