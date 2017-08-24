# Release name
PRODUCT_RELEASE_NAME := ef4x

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/walton/ef4x/device_ef4x.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef4x
PRODUCT_NAME := cm_ef4x
PRODUCT_BRAND := walton
PRODUCT_MODEL := Primo EF4
PRODUCT_MANUFACTURER := walton
