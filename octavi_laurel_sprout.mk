# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common OctaviOs stuff
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

# Inherit from laurel_sprout device
$(call inherit-product, $(LOCAL_PATH)/laurel_sprout.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := laurel_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := octavi_laurel_sprout
PRODUCT_MODEL := Mi A3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# ABI Checks
SKIP_ABI_CHECKS := true

# FOD Animation
EXTRA_FOD_ANIMATIONS := true

# Octavi Props
WITH_GAPPS := true
WITH_GMS := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_HAS_FOD := true
