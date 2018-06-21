USE_CAMERA_STUB := true

# inherit from the proprietary version
TARGET_SOC := exynos7870
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-t830mp1
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal7870
TARGET_NO_RADIOIMAGE := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true
ARCH_ARM_HAVE_NEON := true


BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPRA24A000RU
BOARD_FLASH_BLOCK_SIZE := 131072

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CONFIG := exynos7870-a6lte_defconfig
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/samsung/a6lte
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos


# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CUSTOM_BOOTIMG_MK :=  device/samsung/a6lte/bootimg.mk


# TWRP specific build flags
TW_THEME := portrait_hdpi
TW_HAS_MTP := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/13600000.usb/13600000.dwc3/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 120
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true

# Color fix
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"

# Encryption support
TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_CRYPTO_SAMSUNG := true
#TARGET_HW_DISK_ENCRYPTION := true

# Debug flags
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TWRP_EVENT_LOGGING := false

# Custom version
TW_DEVICE_VERSION := A6-2018

# Charger/Healthd
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging


