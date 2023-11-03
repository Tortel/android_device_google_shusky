DEVICE_PACKAGE_OVERLAYS += device/google/shusky/shiba/overlay-lineage

TARGET_VENDOR_PROP += device/google/shusky/shiba/vendor.prop

$(call inherit-product, device/google/shusky/device-lineage.mk)
