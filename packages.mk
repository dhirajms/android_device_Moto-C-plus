# Root
PRODUCT_PACKAGES += \
    fstab.mt6735 \
    init.mt6735.rc \
    init.mt6735.conn.rc \
    init.mt6735.modem.rc \
    init.mt6735.power.rc \
    init.mt6735.usb.rc \
    ueventd.mt6735.rc

# Ramdisk
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
   $(LOCAL_PATH)/rootdir/sbin/busybox:root/sbin/busybox

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libtinyalsa \
    libtinycompress \
    libtinymix \
    libtinyxml

# Mediatek platform
PRODUCT_PACKAGES += \
    libmtk_symbols

# Power
PRODUCT_PACKAGES += \
    power.default \
    power.mt6737m

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf \
    lib_driver_cmd_mt66xx

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    charger_res_images \
    libnl_2 \
    libion \
    Snap

# FM
PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0

#doze
PRODUCT_PACKAGES += \
    DozePanelli
