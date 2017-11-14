# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Release name
PRODUCT_RELEASE_NAME := Xl
PRODUCT_NAME := lineage_xl

$(call inherit-product, device/nokia/xl/full_nokia.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=NOKIA \
    PRODUCT_NAME=xl \
    BUILD_PRODUCT=xl

