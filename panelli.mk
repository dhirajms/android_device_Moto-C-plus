$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

LOCAL_PATH := device/moto/panelli

$(call inherit-product-if-exists, vendor/moto/panelli/panelli-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/panelli/overlay
PRODUCT_PACKAGE_OVERLAYS += device/moto/panelli/overlay 
# enable this to be able overlay a default wallpaper

# Dalvik/HWUI
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

PRODUCT_TAGS += dalvik.gc.type-precise

# set locales & aapt config.
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := EG

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.manual_sensor.xml:system/etc/permissions/android.hardware.camera.manual_sensor.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml

# LivePicker
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Media	
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

# Media	
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml
    

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
    $(LOCAL_PATH)/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    $(LOCAL_PATH)/rootdir/init.mt6735.rc:root/init.mt6735.rc \
    $(LOCAL_PATH)/rootdir/fstab.mt6735:root/fstab.mt6735 \
    $(LOCAL_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
    $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \
    $(LOCAL_PATH)/rootdir/sbin/busybox:root/sbin/busybox \
    $(LOCAL_PATH)/rootdir/init.microtrust.rc:root/init.microtrust.rc \
    $(LOCAL_PATH)/rootdir/init.connectivity.rc:root/init.connectivity.rc \

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    libaudio-resampler \
    libtinyalsa \
    libtinycompress \
    libtinymix \
    libtinyxml

# WiFi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    lib_driver_cmd_mt66xx

PRODUCT_COPY_FILES += \
    device/moto/panelli/configs/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/moto/panelli/configs/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/moto/panelli/configs/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    charger \
    libnl_2 \
    libion 
    
# Charger Mode
PRODUCT_PACKAGES += \
    charger_res_images

# FM Radio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Camera
PRODUCT_PACKAGES += \
    Snap \
    guiext-server

# CM14 mtk symbols
PRODUCT_PACKAGES += \
    guiext-server \
    mtk_symbols \
    libmtk_symbols

# Force linking shim
LINKER_FORCED_SHIM_LIBS := /system/lib/libcamera_client.so|libmtk_symbols.so
LINKER_FORCED_SHIM_LIBS := /system/vendor/lib/libcam_platform.so|libmtk_symbols.so

# Disable adb security
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.mount.fs=EXT4 \
	ro.adb.secure=0 \
	ro.secure=0 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	persist.service.acm.enable=0 \
	ro.config.low_ram=false

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=cfq

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=0

# Display calibration
PRODUCT_PACKAGES += \
    libjni_livedisplay

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp
#user

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
        ro.build.user=DhirajMS
# Keyhandler package
PRODUCT_PACKAGES += \
    com.cyanogenmod.keyhandler

PRODUCT_SYSTEM_SERVER_JARS += com.cyanogenmod.keyhandler

# Never dexopt the keyhandler
$(call add-product-dex-preopt-module-config,com.cyanogenmod.keyhandler,disable)
