$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

#$(call inherit-product-if-exists, vendor/walton/ef4x/ef4x-vendor.mk)

#DEVICE_PACKAGE_OVERLAYS += device/walton/ef4x/overlay

# Set local path
LOCAL_PATH := device/walton/ef4x

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := lineage_ef4x
PRODUCT_DEVICE := ef4x
