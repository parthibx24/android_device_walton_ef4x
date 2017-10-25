USE_CAMERA_STUB := true

# inherit from the proprietary version

TARGET_ARCH                  := arm
TARGET_NO_BOOTLOADER         := true
TARGET_BOARD_PLATFORM        := unknown
TARGET_CPU_ABI               := armeabi-v7a
TARGET_CPU_ABI2              := armeabi
TARGET_ARCH_VARIANT          := armv7-a-neon
TARGET_CPU_VARIANT           := cortex-a7
TARGET_CPU_SMP               := true
ARCH_ARM_HAVE_TLS_REGISTER   := true
TARGET_BOOTLOADER_BOARD_NAME := ef4x

# Kernel
TARGET_PREBUILT_KERNEL                       := device/walton/ef4x/kernel
BOARD_KERNEL_CMDLINE                         := console=ttyS1,115200n8 androidboot.selinux=permissive
BOARD_KERNEL_BASE                            := 0x00000000
BOARD_KERNEL_PAGESIZE                        := 2048
BOARD_MKBOOTIMG_ARGS                         := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/walton/ef4x/dt.img

# Use decimal values to simplify things. cat proc/partitions then block*1024
BOARD_BOOTIMAGE_PARTITION_SIZE               := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE           := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE             := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE           := 5872025600
#The following value is generic
BOARD_FLASH_BLOCK_SIZE                       := 131072

BOARD_BOOT_DEVICE                            := /dev/block/mmcblk0p16
BOARD_RECOVERY_DEVICE                        := /dev/block/mmcblk0p19
BOARD_SYSTEM_DEVICE                          := /dev/block/mmcblk0p17
BOARD_SYSTEM_FILESYSTEM                      := ext4
BOARD_CACHE_DEVICE                           := /dev/block/mmcblk0p18
BOARD_CACHE_FILESYSTEM                       := ext4
BOARD_DATA_DEVICE                            := /dev/block/mmcblk0p21
BOARD_DATA_FILESYSTEM                        := ext4

# Recovery
#RECOVERY_VARIANT := twrp
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SUPPRESS_SECURE_ERASE := true
USE_OPENGL_RENDERER                          := true


ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.debuggable=1 \
service.adb.root=1 \
persist.sys.usb.config=adb

#TWRP Recovery
BOARD_HAS_NO_SELECT_BUTTON                   := true
TARGET_RECOVERY_FSTAB                        := device/walton/ef4x/twrp.fstab
BOARD_HAS_LARGE_FILESYSTEM                   := true
TARGET_RECOVERY_PIXEL_FORMAT                 := "BGRX_8888"
SP1_NAME                                     := "internal_sd"
SP1_BACKUP_METHOD                            := files
SP1_MOUNTABLE                                := 1
TW_INTERNAL_STORAGE_PATH                     := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT              := "data"
TW_EXTERNAL_STORAGE_PATH                     := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT              := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE                  := true
TW_FLASH_FROM_STORAGE                        := true
TW_NO_REBOOT_BOOTLOADER                      := true
#TW_HAS_DOWNLOAD_MODE                         := true
TW_NO_CPU_TEMP                               := true
BOARD_USE_CUSTOM_RECOVERY_FONT               := \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH             := true
#TW_BRIGHTNESS_PATH                          := /sys/devices/40260000.sprd_pwm_bl/backlight/sprd_backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH              := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
DEVICE_RESOLUTION                            := 480x854
TW_INCLUDE_CRYPTO                            := true
TW_THEME                                     := portrait_mdpi
TWHAVE_SELINUX                               := true
BOARD_RECOVERY_NEEDS_FBIOPAN_DISPLAY         := true
TW_INCLUDE_FB2PNG                            := true
#TW_TARGET_USES_QCOM_BSP                     := false
TW_SCREEN_BLANK_ON_BOOT                      := true
