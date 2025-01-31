#
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fajita device
$(call inherit-product, device/oneplus/fajita/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_fajita
PRODUCT_DEVICE := fajita
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A6013

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus6T-user 9 PKQ1.180716.001 1812260627 release-keys" \
    BuildFingerprint=OnePlus/OnePlus6T/OnePlus6T:9/PKQ1.180716.001/1812260627:user/release-keys \
    DeviceName=OnePlus6T \
    DeviceProduct=OnePlus6T \
    SystemDevice=OnePlus6T \
    SystemName=OnePlus6T

# RisingOS Flags
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_CORE_GMS := true
RISING_PACKAGE_TYPE := "VANILLA_AOSP"
TARGET_PREBUILT_GOOGLE_CAMERA := false
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false

# Inherit RisingOS configurations.
RISING_MAINTAINER = "Susanoo"

# Add Official Stuff
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Qualcomm Snapdragon 845" \
    RisingMaintainer="Susanoo"
