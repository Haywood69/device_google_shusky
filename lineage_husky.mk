#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_husky.mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)

include device/google/shusky/husky/device-lineage.mk

# Xtras
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := true
TARGET_PIXEL_BOOT_ANIMATION_RES := 1440
TARGET_IS_PIXEL_8 := true
TARGET_IS_PIXEL := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_HAS_UDFPS := true
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

#Matrixx Settings
MATRIXX_MAINTAINER := Brian_P8Pro
MATRIXX_CHIPSET := Tensor3
MATRIXX_BATTERY := 5050mah
MATRIXX_DISPLAY := 2992x1344

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := lineage_husky

# Boot animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 AP1A.240405.002 11480754 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/AP1A.240405.002/11480754:user/release-keys

$(call inherit-product, vendor/google/husky/husky-vendor.mk)
