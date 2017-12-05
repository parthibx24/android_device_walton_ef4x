# Copyright (C) 2014 The CyanogenMod Project
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

LOCAL_PATH := device/walton/ef4x

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from vendor tree
$(call inherit-product-if-exists, vendor/samsung/grandprimeve3g/grandprimeve3g-vendor.mk)

# Inherit from scx30g2-common device configuration
$(call inherit-product, device/samsung/scx30g2-common/common.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

# Camera HAL
PRODUCT_PACKAGES += \
	camera.sc8830


# Media config
PRODUCT_PACKAGES += \
	media_profiles.xml

# Permissions
PERMISSIONS_XML_FILES := \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml

PRODUCT_COPY_FILES += \
	$(foreach f,$(PERMISSIONS_XML_FILES),$(f):system/etc/permissions/$(notdir $(f)))

# Rootdir
TARGET_PROVIDES_INIT_RC := true
ROOTFILES := \
	fstab.sp7731c_1h10 \
	init.rc \
	init.recovery.sp7731c_1h10.rc \
	init.sc8830.rc \
	init.sc8830.usb.rc \
	init.sp7731c_1h10.rc \
	ueventd.sp7731c_1h10.rc
PRODUCT_PACKAGES += \
	autotst.ko \
	gator.ko \
	mali.ko \
	mmc_test.ko \
	sprdwl.ko \
	trout_fm.ko

# Copy product packages
PRODUCT_COPY_FILES += \
	$(foreach f,$(ROOTFILES),$(LOCAL_PATH)/rootdir/$(f):root/$(f))

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_ef4x
PRODUCT_DEVICE := ef4x
PRODUCT_BRAND := WALTON
PRODUCT_MANUFACTURER := WALTON
PRODUCT_MODEL := Primo-EF4+
