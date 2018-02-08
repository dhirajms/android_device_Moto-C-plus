LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    IGuiExtService.cpp \
    GuiExtService.cpp \
    GuiExtClient.cpp \
    GuiExtClientProducer.cpp \
    GuiExtClientConsumer.cpp \
    GuiExtImpl.cpp \
    IDumpTunnel.cpp

LOCAL_C_INCLUDES:= \
    $(LOCAL_PATH)/../inc \
    $(TOP)/frameworks/base/include/ \
    $(LOCAL_PATH)/../../../include

#    $(TOP)/vendor/mediatek/proprietary/external/include \
#    $(TOP)/vendor/mediatek/proprietary/hardware/include

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libcutils \
    libbinder \
    libhardware \
    libhardware_legacy \
    libgui \
    libui \
    libdl \
    libion \
    libion_mtk \
    libgralloc_extra

# for bring up, please unmark this line
# LOCAL_CFLAGS += -DMTK_DO_NOT_USE_GUI_EXT

ifneq ($(strip $(TARGET_BUILD_VARIANT)), eng)
LOCAL_CFLAGS += -DMTK_USER_BUILD
endif


ifeq (,$(filter $(TARGET_BOARD_PLATFORM), mt6795 mt6595))
ifeq ($(MTK_MIRAVISION_SUPPORT),yes)
LOCAL_CFLAGS += -DCONFIG_FOR_SOURCE_PQ
endif
endif

LOCAL_MODULE := libgui_ext

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

