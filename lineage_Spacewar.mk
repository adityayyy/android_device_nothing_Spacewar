#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# OMX Service support
TARGET_SUPPORTS_OMX_SERVICE := false

# Custom Flags
TARGET_DISABLE_EPPE := true

# Inherit from Spacewar device
$(call inherit-product, device/nothing/Spacewar/device.mk)

# Inherit some common custom stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Lunaris flags
LUNARIS_BUILD_TYPE := OFFICIAL
WITH_GMS := true
TARGET_CUSTOM_UDFPS := true
TARGET_OPTIMIZED_DEXOPT := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_Spacewar
PRODUCT_DEVICE := Spacewar
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A063
PRODUCT_MANUFACTURER := Nothing

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=Spacewar \
    BuildFingerprint="Nothing/Spacewar/Spacewar:15/AQ3A.240929.001/2602061016:user/release-keys"

#maintainer props
INFINITY_MAINTAINER := "Aditya"
TARGET_SUPPORTS_BLUR := true
INFINITY_BUILD_TYPE := UNOFFICIAL
WITH_GAPPS := true
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
