#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution X stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_7 := true
TARGET_PIXEL_STAND_SUPPORTED := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)
$(call inherit-product, device/google/gs201/evolution_common.mk)

include device/google/pantah/panther/device-evolution.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := evolution_panther

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 14 AP1A.240305.019.A1 11445699 release-keys"

BUILD_FINGERPRINT := google/panther/panther:14/AP1A.240305.019.A1/11445699:user/release-keys

$(call inherit-product, vendor/google/panther/panther-vendor.mk)
