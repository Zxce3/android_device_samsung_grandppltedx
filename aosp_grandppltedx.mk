# Release name
PRODUCT_RELEASE_NAME := grandppltedx

# Inherit some common AEX stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/grandppltedx/device.mk)

# Display
#-- is qhd (960 x 540)
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
DEVICE_RESOLUTION := 540x960

TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Bootanimation resoultion
TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grandppltedx
PRODUCT_NAME := aosp_grandppltedx
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy J2 Prime
PRODUCT_MANUFACTURER := Samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

