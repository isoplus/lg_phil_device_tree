## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := w7

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/w7/device_w7.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := w7
PRODUCT_NAME := cm_w7
PRODUCT_BRAND := LGE
PRODUCT_MODEL := w7
PRODUCT_MANUFACTURER := lge
