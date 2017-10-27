# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := ef4x
PRODUCT_DEVICE := ef4x
PRODUCT_NAME := lineage_ef4x
PRODUCT_BRAND := WALTON
PRODUCT_MODEL := Primo EF4+
PRODUCT_MANUFACTURER := WALTON
