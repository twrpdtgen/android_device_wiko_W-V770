#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from W-V770 device
$(call inherit-product, device/wiko/W-V770/device.mk)

PRODUCT_DEVICE := W-V770
PRODUCT_NAME := omni_W-V770
PRODUCT_BRAND := WIKO
PRODUCT_MODEL := W-V770
PRODUCT_MANUFACTURER := wiko

PRODUCT_GMS_CLIENTID_BASE := android-wiko

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_v770-user 11 RP1A.200720.011 1696904375 release-keys"

BUILD_FINGERPRINT := WIKO/W-V770/W-V770:11/RP1A.200720.011/1696904375:user/release-keys
