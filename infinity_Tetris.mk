#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Tetris device
$(call inherit-product, device/nothing/Tetris/device.mk)

# Inherit some common Infinity stuff.
$(call inherit-product, vendor/infinity/config/common_mobile_full.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080
INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := SINGH
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true
TARGET_SHIPS_FULL_GAPPS := true
TARGET_HAS_UDFPS := true


INFINITY_PRODUCT_NAME := infinity_Tetris
INFINITY_PRODUCT_DEVICE := Tetris
INFINITY_PRODUCT_BRAND := Nothing
INFINITY_PRODUCT_MANUFACTURER := Nothing
INIFINITY_PRODUCT_MODEL := A015

PRODUCT_GMS_CLIENTID_BASE := android-nothing

DEVICE_CODENAME := Tetris

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_64_64only_ww_armv82-user 16 BP2A.250605.031.A3 2606151652 release-keys" \
    BuildFingerprint=Nothing/Tetris/Tetris:16/BP2A.250605.031.A3/2606151652:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME) \
    DeviceName=$(DEVICE_CODENAME) \
    SystemDevice=$(DEVICE_CODENAME) \
    SystemName=$(DEVICE_CODENAME)
