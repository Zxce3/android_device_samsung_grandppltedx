# Legal :)
#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Display
#-- This device is hdpi.
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_AAPT_PREBUILT_DPI := hdpi
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540


# auto-created during mkvendor.sh
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product, build/target/product/core.mk)
$(call inherit-product-if-exists, vendor/samsung/grandppltedx/grandppltedx-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/grandppltedx/overlay


# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml
	
# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.r_submix.default \
	libaudiopolicymanagerdefault \
	libtinyalsa \
	libtinycompress \
	libtinymix \
	libtinyxml \
	libfs_mgr

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio_device.xml:system/etc/audio_device.xml \
	$(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf \
	$(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Bluetooth
PRODUCT_COPY_FILES += \



# Display
PRODUCT_PACKAGES += \
	libion

# FM
PRODUCT_PACKAGES += \
	libfmjni \
	FMRadio 

# GPS
PRODUCT_PACKAGES += \
	libcurl 

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
	$(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml \
	$(LOCAL_PATH)/configs/clatd.conf:system/etc/clatd.conf 
#	
# Power
PRODUCT_PACKAGES += \
	power.default \
	power.mt6735

# Radio dependencies
PRODUCT_PACKAGES += \
	muxreport \
	terservice

# Wifi
PRODUCT_PACKAGES += \
	libwpa_client \
	hostapd \
	dhcpcd.conf \
	wpa_supplicant

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Charger Mode
PRODUCT_PACKAGES += \
	charger_res_images

# Key Layouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayouts/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
	$(LOCAL_PATH)/keylayouts/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# Media
PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
	$(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
	$(LOCAL_PATH)/configs/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Shims
PRODUCT_PACKAGES += \
	libshim_thermal \
	libshim_camera \
	liblog_mtk

# Rootdir
PRODUCT_PACKAGES += \
	fstab.mt6735 \
	init.modem.rc \
	init.mt6735.rc \
	init.mt6735.usb.rc \
	init.project.rc \
	init.recovery.mt6735.rc \
	init.rilchip.rc \
	init.rilepdg.rc \
	init.rilcommon.rc \
	init.usb.configfs.rc \
	init.volte.rc \
	init.wifi.rc \
	ueventd.mt6735.rc \
	init.emdlogger1.rc \
	init.xlog.rc \
	init.samsung.rc

# Default.prop
ADDITIONAL_DEFAULT_PROPERTIES += \
	rild.libpath=/system/lib/libsec-ril.so \
	rild.libpath2=/system/lib/libsec-ril-dsds.so \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.debuggable=1 \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	persist.sys.dun.override=0 \
	persist.sys.usb.config=mtp,adb \
	sys.usb.config=mtp,adb \
	persist.sys.display.clearMotion=0
