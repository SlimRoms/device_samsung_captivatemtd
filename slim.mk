## Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := I897

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/captivatemtd/full_captivatemtd.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

#copy kernel and modules
PRODUCT_COPY_FILES += \
        device/samsung/aries-common/recovery.fstab:ramdisk.img \
        device/samsung/aries-common/recovery.fstab:recovery/root/etc/recovery.fstab


PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

#copy 00check
PRODUCT_COPY_FILES += \
    device/samsung/captivatemtd/prebuilt/init.d/00check:system/etc/init.d/00check

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := captivatemtd
PRODUCT_NAME := slim_captivatemtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-I897

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I897 TARGET_DEVICE=SGH-I897 BUILD_FINGERPRINT=samsung/SGH-I897/SGH-I897:4.2.1/JOP40D:user/release-keys PRIVATE_BUILD_DESC="SGH-I897-userdebug 4.2.1 JOP40D user.Josh.20120828.002056 release-keys"

