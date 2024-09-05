#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/vermeer
GAPPS_PATH  := vendor/gapps/arm64

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit common LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_DEVICE := vermeer
PRODUCT_NAME := lineage_vermeer
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23113RKC6G
PRODUCT_MANUFACTURER := Xiaomi

# BLKI
WITH_GMS := true
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ENABLE_BLUR := true
BLACKIRON_BUILDTYPE := Official
BLACKIRON_MAINTAINER := Ralf979

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1440

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vermeer_global-user 13 TKQ1.221114.001 V816.0.2.0.UNKMIXM release-keys" \
    TARGET_DEVICE=vermeer \
    TARGET_PRODUCT=vermeer_global

BUILD_FINGERPRINT := POCO/vermeer_global/vermeer:13/TKQ1.221114.001/V816.0.2.0.UNKMIXM:user/release-keys
