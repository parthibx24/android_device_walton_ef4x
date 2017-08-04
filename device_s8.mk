$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lemon/s8/s8-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lemon/s8/overlay

# Set local path
LOCAL_PATH := device/lemon/s8

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lemon/s8/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Init files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/ueventd.sc8830.rc:root/ueventd.sc8830.rc \
        $(LOCAL_PATH)/rootdir/fstab.sc8830:root/fstab.sc8830 

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_s8
PRODUCT_DEVICE := s8
