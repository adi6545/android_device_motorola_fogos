#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fogos device
$(call inherit-product, device/motorola/fogos/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_fogos
PRODUCT_DEVICE := fogos
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g34 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="fogos_g-user 15 V1UGS35M.75-14-9-3-1-2 9dc92 release-keys" \
    BuildFingerprint=motorola/fogos_g/fogos:15/V1UGS35M.75-14-9-3-1-2/9dc92:user/release-keys \
    DeviceProduct=fogos_g


# ---- Lunaris flags -------------------------------------------------------
# These are what tiraq-official@lunaris has and adi6545@Lunaris lacks.
LUNARIS_BUILD_TYPE := UNOFFICIAL
WITH_GMS := true
TARGET_OPTIMIZED_DEXOPT := true
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
TARGET_ENABLE_BLUR := true
TARGET_DISABLE_MATLOG := true
WITH_PIXEL_LAUNCHER := false
WITH_BCR := true
SURFACE_FLINGER_BOOST := true
