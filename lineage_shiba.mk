#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_shiba.mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)

include device/google/shusky/shiba/device-lineage.mk


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

#matrixx Settings
MATRIXX_MAINTAINER := Brian_P8Pro
MATRIXX_CHIPSET := Tensor3
MATRIXX_BATTERY := 4575mah
MATRIXX_DISPLAY := 2400x1080


# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8
PRODUCT_NAME := lineage_shiba

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=shiba \
    PRIVATE_BUILD_DESC="shiba-user 14 AP1A.240405.002 11480754 release-keys"

BUILD_FINGERPRINT := google/shiba/shiba:14/AP1A.240405.002/11480754:user/release-keys

$(call inherit-product, vendor/google/shiba/shiba-vendor.mk)
