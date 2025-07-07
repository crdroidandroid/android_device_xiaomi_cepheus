#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit from cepheus device
$(call inherit-product, device/xiaomi/cepheus/device.mk)

# Inherit some common RisingOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# RisingOS FLAGS
WITH_GMS := true
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
TARGET_DEFAULT_PIXEL_LAUNCHER := true
RISING_MAINTAINER= tribual 丨 家
PRODUCT_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := msmnile

# Keys
-include vendor/lineage-priv/keys/keys.mk

# Exclude QCOM powerhal manifest
TARGET_PROVIDES_POWERHAL := true

# Device identifier
PRODUCT_NAME := lineage_cepheus
PRODUCT_DEVICE := cepheus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_CHARACTERISTICS := nosdcard

# Recovery
TARGET_USES_AOSP_RECOVERY := true

BUILD_FINGERPRINT := Xiaomi/cepheus/cepheus:11/RKQ1.200826.002/V12.5.6.0.RFACNXM:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Qualcomm Snapdragon 855" \
    RisingMaintainer="tribual 丨 家"
