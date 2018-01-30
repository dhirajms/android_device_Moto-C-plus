## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := panelli

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/moto/panelli/panelli.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := panelli
PRODUCT_NAME := lineage_panelli
PRODUCT_BRAND := Moto
PRODUCT_MODEL := Moto C Plus
PRODUCT_MANUFACTURER := Motorola
