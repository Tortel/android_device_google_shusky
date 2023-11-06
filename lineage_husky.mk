# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/zuma/lineage-common.mk)
$(call inherit-product, device/google/shusky/husky/device-lineage.mk)
$(call inherit-product, device/google/shusky/aosp_husky.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_husky
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 UD1A.230803.041 10808477 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/UD1A.230803.041/10808477:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/husky/husky-vendor.mk)
