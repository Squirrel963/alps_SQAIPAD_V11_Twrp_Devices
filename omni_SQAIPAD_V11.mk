#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from SQAIPAD-V11 device
$(call inherit-product, device/alps/SQAIPAD-V11/device.mk)

PRODUCT_DEVICE := SQAIPAD-V11
PRODUCT_NAME := omni_SQAIPAD-V11
PRODUCT_BRAND := SQAI
PRODUCT_MODEL := SQAIPAD-V11
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="SQAIPAD-V11-user 10 QP1A.190711.020 mp1V84 test-keys"

BUILD_FINGERPRINT := SQAI/SQAIPAD-V11/SQAIPAD-V11:10/QP1A.190711.020/111115:user/test-keys
