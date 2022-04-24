# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from A3 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := umidigi
PRODUCT_DEVICE := A3
PRODUCT_MANUFACTURER := umidigi
PRODUCT_NAME := lineage_A3
PRODUCT_MODEL := A3

PRODUCT_GMS_CLIENTID_BASE := android-umidigi
TARGET_VENDOR := umidigi
TARGET_VENDOR_PRODUCT_NAME := A3
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="A3-user 8.1.0 O11019 1541509958 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := UMIDIGI/A3/A3:8.1.0/O11019/1541509958:user/release-keys
