USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/w7/BoardConfigVendor.mk

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
#We have to wait until we decide to build kernel ourself.
#TARGET_BOARD_PLATFORM := msm8226
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := w7

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 msm_rtb.filter=0x37 androidboot.hardware=w7
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

#Copied from g2-common.
RECOVERY_FSTAB_VERSION = 2
TARGET_RECOVERY_FSTAB = device/lge/w7/fstab.w7

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x16000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x16000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x80000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xfbd80000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USES_OVERLAY := true

#Comment the line below to build kernel from source.
TARGET_USE_PREBUILT := true
ifeq ($(TARGET_USE_PREBUILT),true)
TARGET_PREBUILT_KERNEL := device/lge/w7/kernel
BOARD_MKBOOTIMG_ARGS  := --dt device/lge/w7/dt.img
else
TARGET_KERNEL_SOURCE := kernel/lge/msm8974 #We don't have it yet.
TARGET_KERNEL_CONFIG := w7_open_cis_defconfig
G2_DTS_TARGET := msm8226-w7_open_cis
BOARD_CUSTOM_BOOTIMG_MK := device/lge/w7/mkbootimg.mk
endif

BOARD_HAS_NO_SELECT_BUTTON := true

#recovery
BOARD_RECOVERY_USE_LIBTAR := true
TARGET_COMMON_NAME := LG L90 By Shoxx
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
BOARD_HAS_LOW_RESOLUTION := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"

# USB
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 35
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
