# Copyright (C) 2012 The CyanogenMod Project
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

BOARD_VENDOR := xiaomi
TARGET_SPECIFIC_HEADER_PATH := device/xiaomi/msm8660-common/include

# CPU
TARGET_CPU_VARIANT := cortex-a8
TARGET_ARCH_VARIANT_CPU := cortex-a8

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/msm8660

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Graphics
TARGET_QCOM_DISPLAY_VARIANT := legacy
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
# TARGET_USES_QCOM_BSP := true
BOARD_EGL_CFG := device/xiaomi/msm8660-common/configs/egl.cfg
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
# COMMON_GLOBAL_CFLAG += -DNEW_ION_API

# FB legacy
BOARD_EGL_NEEDS_LEGACY_FB := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
COMMON_GLOBAL_CFLAGS += -DLEGACY_QCOM_VOICE

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
# TARGET_DISABLE_ARM_PIE := true
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DNO_UPDATE_PREVIEW

# Camera wrapper
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Filesystem
BOARD_VOLD_MAX_PARTITIONS := 36


# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

