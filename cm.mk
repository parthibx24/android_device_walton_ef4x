# Release name
PRODUCT_RELEASE_NAME := s8

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lemon/s8/device_s8.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s8
PRODUCT_NAME := cm_s8
PRODUCT_BRAND := lemon
PRODUCT_MODEL := s8
PRODUCT_MANUFACTURER := lemon
