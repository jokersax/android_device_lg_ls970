## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := optimus_g

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lg/optimus_g/device_optimus_g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := optimus_g
PRODUCT_NAME := cm_optimus_g
PRODUCT_BRAND := lg
PRODUCT_MODEL := optimus_g
PRODUCT_MANUFACTURER := lg
