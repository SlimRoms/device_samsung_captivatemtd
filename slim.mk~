## Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GalaxyS

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

#copy kernel and modules
PRODUCT_COPY_FILES += \
	device/samsung/captivatemtd/prebuilt/kernel/boot.img:system/slimkernel/boot.img \
	device/samsung/captivatemtd/prebuilt/kernel/boot.img:kernel \
        device/samsung/aries-common/recovery.fstab:ramdisk.img \
        device/samsung/aries-common/recovery.fstab:recovery/root/etc/recovery.fstab \
	device/samsung/captivatemtd/prebuilt/kernel/system/lib/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
	device/samsung/captivatemtd/prebuilt/kernel/system/lib/modules/cifs.ko:system/lib/modules/cifs.ko \
	device/samsung/captivatemtd/prebuilt/kernel/system/lib/modules/mls_utf8.ko:system/lib/modules/mls_utf8.ko \
	device/samsung/captivatemtd/prebuilt/kernel/system/lib/modules/nls_utf8.ko:system/lib/modules/nls_utf8.ko

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

#copy 00check
PRODUCT_COPY_FILES += \
	device/samsung/galaxysmtd/prebuilt/kernel/system/etc/init.d/00check:system/etc/init.d/00check

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := captivatemtd
PRODUCT_NAME := slim_captivatemtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-I897

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I897 TARGET_DEVICE=SGH-I897 BUILD_FINGERPRINT=samsung/SGH-I897/SGH-I897:4.1.1/JRO03L:user/release-keys PRIVATE_BUILD_DESC="SGH-I897-userdebug 4.1.1 JRO03L user.Josh.20120828.002056 release-keys"

