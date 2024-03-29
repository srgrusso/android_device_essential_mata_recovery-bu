# Inherit device configuration
$(call inherit-product, device/essential/mata/device.mk)

# Inherit some common omni stuff.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/omni/config/common.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor blobs
#$(call inherit-product-if-exists, vendor/essential/mata/mata-vendor.mk)

# Device
#$(call inherit-product, device/essential/mata/device.mk)

# TWRP
#ifeq ($(WITH_TWRP),true)
#$(call inherit-product, device/essential/mata/twrp/twrp.mk)
#else
#TARGET_RECOVERY_FSTAB := device/essential/mata/rootdir/etc/fstab.mata
#endif

# Device identifiers
PRODUCT_DEVICE := mata
PRODUCT_NAME := omni_mata
PRODUCT_BRAND := essential
PRODUCT_MODEL := PH-1
PRODUCT_MANUFACTURER := Essential Products
PRODUCT_RELEASE_NAME := mata

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=mata \
        PRIVATE_BUILD_DESC="mata-user 8.1.0 OPM1.180104.010 144 release-keys"

BUILD_FINGERPRINT := essential/mata/mata:8.1.0/OPM1.180104.010/144:user/release-keys
