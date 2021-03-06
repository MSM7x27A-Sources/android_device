#
# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
# The proprietary variant sets USE_CAMERA_STUB := false, this way
# we use the camera stub when the vendor tree isn't present, and
# the true camera library when the vendor tree is available.
USE_CAMERA_STUB := true

# Inherit from the proprietary version
-include vendor/lenovo/armani/BoardConfigVendor.mk

BOARD_VENDOR := lenovo-qcom

# Assert
TARGET_OTA_ASSERT_DEVICE := armani,msm8625_armani,msm8225_armani,a706,A706

# Compile sys
TARGET_GCC_VERSION_EXP := 4.7
DISABLE_DEXPREOPT := false
TARGET_SPECIFIC_HEADER_PATH := device/lenovo/armani/include

# Compiler flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a5 -mfpu=neon-vfpv4 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon-vfpv4 -mfloat-abi=softfp

# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_USES_ION := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := 7x27
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture and CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_CPU_SMP := true

# Optimisations
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_CORTEX_CACHE_LINE_32 := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

TARGET_KERNEL_SOURCE := kernel/lenovo/armani
TARGET_KERNEL_CONFIG := t_defconfig
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1 vmalloc=200M androidboot.selinux=permissive 
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x10000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x11000000

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 571859200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 984961024
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13901824
BOARD_CACHEIMAGE_PARTITION_SIZE := 104857600

BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_CACHE_DEVICE := /dev/block/mmcblk0p18
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw

BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p17
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw

BOARD_DATA_DEVICE := /dev/block/mmcblk0p21
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw

# Init
BOARD_WANTS_EMMC_BOOT := true

# Dalvik
TARGET_ARCH_LOWMEM := true

# Low RAM settings
MALLOC_IMPL := dlmalloc
TARGET_BOOTANIMATION_TEXTURE_CACHE := false
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := false
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := false
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_HAS_QACT := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := false
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lenovo/armani/bluetooth

# FM
BOARD_HAVE_QCOM_FM := true
AUDIO_FEATURE_ENABLED_FM := true

# GPS
QCOM_GPS_PATH := hardware/qcom/gps
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

# GPU
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Graphics
COMMON_GLOBAL_CFLAGS += -DUSE_MDP3
TARGET_USES_QCOM_BSP := true
TARGET_GRALLOC_USES_ASHMEM := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_CFG := device/lenovo/armani/configs/egl.cfg
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_NO_COMPAT_GRALLOC_PERFORM := true
USE_OPENGL_RENDERER := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
BOARD_USE_MHEAP_SCREENSHOT := true
HWUI_COMPILE_FOR_PERF := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Other
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
ARCH_ARM_HAVE_TLS_REGISTER := true


# Offline Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# RIL
COMMON_GLOBAL_CFLAGS += -DRIL_SUPPORTS_SEEK
COMMON_GLOBAL_CFLAGS += -DRIL_VARIANT_LEGACY
BOARD_RIL_CLASS := ../../../device/lenovo/armani/ril/

# Hardware
BOARD_HARDWARE_CLASS := device/lenovo/armani/cmhw

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Media
COMMON_GLOBAL_CFLAGS += -DBOARD_CANT_REALLOCATE_OMX_BUFFERS
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_MEDIA_VARIANT := legacy
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480

# SELinux
BOARD_SEPOLICY_DIRS += device/lenovo/armani/sepolicy

BOARD_SEPOLICY_UNION += file_contexts
BOARD_SEPOLICY_UNION += app.te
BOARD_SEPOLICY_UNION += device.te
BOARD_SEPOLICY_UNION += file.te

# USB
#BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
#TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1

# Vold
BOARD_VOLD_MAX_PARTITIONS := 19
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_WANTS_EMMC_BOOT := true

# Recovery # CWM
BOARD_CUSTOM_GRAPHICS := ../../../device/lenovo/armani/recovery/graphics.c
TARGET_RECOVERY_FSTAB := device/lenovo/armani/recovery/recovery.fstab
DEVICE_RESOLUTION := 480x854
TARGET_BOOTLOADER_BOARD_NAME := msm7x27
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun%d/file
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HAS_ATH_WLAN := true
BOARD_WLAN_DEVICE := ath6kl
TARGET_CUSTOM_WIFI := ../../device/lenovo/armani/libhardware_legacy/wifi/wifi.c
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/ath6kl/ath6kl_sdio.ko"
WIFI_DRIVER_MODULE_NAME := "ath6kl_sdio"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/ath6kl/cfg80211.ko"
WIFI_EXT_MODULE_NAME := "cfg80211"
WIFI_DRIVER_FW_PATH_PARAM := "/data/misc/wifi/fwpath"
WIFI_DRIVER_IFACE_NAME := "wlan"


STRICT_ALIASING := false
SUPPRESS_UNUSED_WARNING := true
