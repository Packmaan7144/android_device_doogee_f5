# inherit from the proprietary version
-include vendor/doogee/f5/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := x5607_dg_a32

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 selinux=0
BOARD_KERNEL_BASE := 0x4dffff00
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2516582400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12496404480
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0xF2080100 --ramdisk_offset 0xF6000100 --second_offset 0xF2F00100 --tags_offset 0x00000100

# Prebuilt Kernel
TARGET_KERNEL_SOURCE := kernel/doogee/f5
TARGET_KERNEL_CONFIG := f5_cyanogenmod_defconfig
TARGET_RECOVERY_FSTAB := device/doogee/f5/fstab.mt6735

# Graphics Library Config
BOARD_EGL_CFG := device/doogee/f5/configs/egl.cfg

# system.prop
TARGET_SYSTEM_PROP := device/doogee/f5/system.prop

# CyanogenMod Hardware Hooks
BOARD_HARDWARE_CLASS := device/doogee/f5/cmhw/

# Fingerprint Sensor
VANZO_FEATURE_ADD_SILEADINC_FP := yes
VANZO_FEATURE_FACTORYMODE_USE_ENGLISH := yes

# Recovery
RECOVERY_FSTAB_VERSION := 2
BOARD_HAS_NO_SELECT_BUTTON := true

# Mediatek flags
#BOARD_HAS_MTK_HARDWARE := true
#MTK_HARDWARE := true
#COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE
#COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

USE_OPENGL_RENDERER := true

# Hack for building without kernel sources
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
