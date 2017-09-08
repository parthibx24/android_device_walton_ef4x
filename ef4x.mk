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
$(call inherit-product-if-exists, vendor/walton/ef4x/ef4x-vendor.mk)

# Inherit from AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

# Media config
PRODUCT_PACKAGES += \
	media_profiles.xml
MEDIA_XML_CONFIGS := \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml

PRODUCT_COPY_FILES += \
	$(foreach f,$(MEDIA_XML_CONFIGS),$(f):system/etc/$(notdir $(f)))

PRODUCT_PACKAGES += \
	media_codecs.xml \
	media_codecs_performance.xml

# Permissions
PERMISSIONS_XML_FILES := \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml

PRODUCT_COPY_FILES += \
	$(foreach f,$(PERMISSIONS_XML_FILES),$(f):system/etc/permissions/$(notdir $(f)))

# Audio
PRODUCT_PACKAGES += \
	audio_hw.xml \
	audio_para \
	audio_effects_vendor.conf \
	audio_policy.conf \
	codec_pga.xml \
	tiny_hw.xml \
	audio.primary.sc8830 \
	libaudio-resampler \
	libatchannel_wrapper \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libtinyalsa

# Bluetooth
PRODUCT_PACKAGES += \
	bt_vendor.conf \
	libbluetooth_jni \
	bluetooth.default

# HWC
PRODUCT_PACKAGES += \
	gralloc.sc8830 \
	sprd_gsp.sc8830 \
	libmemoryheapion \
	libion_sprd

# Codecs
PRODUCT_PACKAGES += \
	libcolorformat_switcher \
	libstagefrighthw \
	libstagefright_sprd_mpeg4dec \
	libstagefright_sprd_mpeg4enc \
	libstagefright_sprd_h264dec \
	libstagefright_sprd_h264enc \
	libstagefright_sprd_vpxdec

# Lights
PRODUCT_PACKAGES += \
	lights.sc8830

# GPS
PRODUCT_PACKAGES += \
	gps.xml

# WiFi
PRODUCT_PACKAGES += \
	wpa_supplicant_overlay.conf \
	p2p_supplicant_overlay.conf \
	nvram_net.txt \
	macloader \
	dhcpcd.conf \
	wpa_supplicant \
	hostapd

# PowerHAL
PRODUCT_PACKAGES += \
	power.sc8830

# FM radio
PRODUCT_PACKAGES += \
	fm.sc8830

# Common libs
PRODUCT_PACKAGES += \
	libstlport \
	libril_shim \
	libgps_shim

# Permissions
PERMISSIONS_XML_FILES := \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.software.midi.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.software.sip.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml \

PRODUCT_COPY_FILES += \
	$(foreach f,$(PERMISSIONS_XML_FILES),$(f):system/etc/permissions/$(notdir $(f)))

# ART device props
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.fw.dex2oat_thread_count=4 \
	dalvik.vm.dex2oat-flags=--no-watch-dog

# Filesystem management tools
PRODUCT_PACKAGES += \
	f2fstat \
	fibmap.f2fs \
	fsck.f2fs \
	mkfs.f2fs \
	setup_fs \

# Misc packages
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory \
    
# Camera config
PRODUCT_PROPERTY_OVERRIDES += \
	camera.disable_zsl_mode=1

# Compat
PRODUCT_PACKAGES += \
    	libstlport

# Charger
PRODUCT_PACKAGES += \
	charger \
	charger_res_images

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp,adb

# Device props
PRODUCT_PROPERTY_OVERRIDES := \
	keyguard.no_require_sim=true \
	ro.com.android.dataroaming=false

# Languages
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.locale.language=en \
	ro.product.locale.region=GB

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.locationfeatures=1 \
	ro.com.google.networklocation=1

# Dalvik heap config
$(call inherit-product, frameworks/native/build/phone-hdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.adb.secure=0 \
	ro.debuggable=1 \
	persist.sys.root_access=1 \
	persist.service.adb.enable=1

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Rootdir
#TARGET_PROVIDES_INIT_RC := true
PRODUCT_PACKAGES += \
	fstab.sc8830 \
	ef4x.rc \
	init.sc8830.rc \
	init.sc8830.usb.rc \
	init.sc8830_ss.rc \
	init.board.rc \
	init.wifi.rc \
	ueventd.sc8830.rc \
	fstab.sp7731c_1h10 \
	init.recovery.sp7731c_1h10.rc \
	init.sp7731c_1h10.rc \
	ueventd.sp7731c_1h10.rc


# Prebuilt ramdisk files
PREBUILT_RAMDISK_FILES := \
	lib/modules/autotst.ko \
	lib/modules/mali.ko \
	lib/modules/gator.ko \
	lib/modules/trout_fm.ko \
	lib/modules/mmc_test.ko \
	lib/modules/sprdwl.ko \
	sbin/healthd \
	sbin/adbd \
	sbin/resize2fs \
	sbin/charge \
	sbin/efs \
	sbin/init_su \
	sbin/intextSdCard \
	sbin/mkfs.f2fs \
	sbin/sswap \
	file_contexts \
	init.rc \
	init \
	property_contexts \
	seapp_contexts \
	sepolicy \
	service_contexts

#PRODUCT_COPY_FILES += \
#	$(foreach f,$(PREBUILT_RAMDISK_FILES),device/walton/ef4x/prebuilt/root/$(f):root/$(f))
	
# da kharnal
TARGET_PREBUILT_SHIT := device/walton/ef4x/kernel.ef4x
PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_SHIT):kernel 

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_ef4x
PRODUCT_DEVICE := ef4x
PRODUCT_BRAND := walton
PRODUCT_MANUFACTURER := walton
PRODUCT_MODEL := Primo EF4+
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=200
	ro.product.model=Primo EF4+
	ro.product.device=ef4x
