# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from m2a3g device
$(call inherit-product, device/samsung/m2a3g/device.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

#$(call inherit-product-if-exists, vendor/samsung/m2a3g/m2a3g-vendor.mk)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

DEVICE_PACKAGE_OVERLAYS += device/samsung/m2a3g/overlay

LOCAL_PATH := device/samsung/m2a3g
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=1402410896

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_m2a3g
PRODUCT_DEVICE := m2a3g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-C111

# include the non-open-source counterpart to this file
-include vendor/samsung/m2a3g/BoardConfigVendor.mk