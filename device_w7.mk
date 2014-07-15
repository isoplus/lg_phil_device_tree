
LOCAL_PATH := device/lge/w7

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/lge/w7/w7-vendor.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#using nolinuxnoparty_tree
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.w7.rc:root/init.w7.rc \
    $(LOCAL_PATH)/ueventd.w7.rc:root/ueventd.w7.rc \
    $(LOCAL_PATH)/fstab.w7:root/fstab.w7

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_w7
PRODUCT_DEVICE := w7
