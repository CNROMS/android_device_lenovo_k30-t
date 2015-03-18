USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/k30-t/BoardConfigVendor.mk

#Assert
TARGET_OTA_ASSERT_DEVICE := k30-t

#Board
BOARD_VENDOR := lenovo
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

#Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := k30-t

#kernel
TARGET_PREBUILT_KERNEL := device/lenovo/k30-t/kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100 --dt device/lenovo/k30-t/dt.img

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true

#Font
BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn30_18x48.h\"

#Recovery
TARGET_RECOVERY_FSTAB := device/lenovo/k30-t/rootdir/etc/recovery.fstab
RECOVERY_VARIANT := cnroms
BOARD_CUSTTOM_GRAPHICS := bootable/recovery-cnroms/minui/graphics_cn.c

#Screen
TARGET_RECOVERY_SCREEN_WIDTH := 720x1280
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

#Pexil format RGBX
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

#Pixel if or? And configure KERNEL_OBJ Graphics
TARGET_USES_QCOM_BSP := true

#lcd bright
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

#Fix Wipe
#BOARD_NO_SECURE_DISCARD := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

#Fix Qcom Time
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE


#Virtual key
RECOVERY_USE_VIRTUAL_KEY := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lenovo/k30-t/recovery/recovery_keys.c
