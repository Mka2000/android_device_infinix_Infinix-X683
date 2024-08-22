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

# Inherit from Infinix-X683 device
$(call inherit-product, device/infinix/X683/device.mk)

PRODUCT_DEVICE := X683
PRODUCT_NAME := omni_X683
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X683
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x683_h694-user 10 QP1A.190711.020 153045 release-keys"

BUILD_FINGERPRINT := Infinix/X683-OP/Infinix-X683:10/QP1A.190711.020/210831V303:user/release-keys
