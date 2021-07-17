#
# Copyright (C) 2013 The CyanogenMod Project
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

# Inherit from universal5260-common
include device/samsung/universal5260-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/m2a3g

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/m2a3g/kernel
#TARGET_KERNEL_CONFIG := lineage-m2a3g_defconfig
#TARGET_KERNEL_CONFIG := cm_m2a3g_defconfig

# Bootloader
TARGET_OTA_ASSERT_DEVICE := m2a3g,m2a3gxx,m2alte