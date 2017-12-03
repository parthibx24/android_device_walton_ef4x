## Specify phone tech before including full_phone	
$(call inherit-product, vendor/cm/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := ef4x

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/ef4x.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ef4x
PRODUCT_NAME := lineage_ef4x
PRODUCT_BRAND := WALTON
PRODUCT_MODEL := Primo-EF4+
PRODUCT_MANUFACTURER := WALTON
PRODUCT_CHARACTERISTICS := phone

# Stock build fingerprint
BUILD_FINGERPRINT := "samsung/grandprimeve3gxx/grandprimeve3g:5.1.1/LMY48B/G531HDDU0APK2:user/release-keys"
PRIVATE_BUILD_DESC := "grandprimeve3gxx-user 5.1.1 LMY48B G531HDDU0APK2 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.fingerprint=$(BUILD_FINGERPRINT)
