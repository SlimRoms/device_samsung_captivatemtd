## Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := captivatemtd

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/captivatemtd/full_captivatemtd.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := captivatemtd
PRODUCT_NAME := slim_captivatemtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-I897

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I897 TARGET_DEVICE=SGH-I897 BUILD_FINGERPRINT=samsung/SGH-I897/SGH-I897:2.3.5/GINGERBREAD/UCKK4:user/release-keys PRIVATE_BUILD_DESC="SGH-I897-user 2.3.5 GINGERBREAD UCKK4 release-keys"
