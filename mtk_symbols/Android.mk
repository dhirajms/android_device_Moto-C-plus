LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)


#    mtk_xlog.cpp
#    mtk_audioCompat.c \
#     mtk_gps.cpp


LOCAL_SRC_FILES := \
    icu55.c \
    mtk_asc.cpp \
    mtk_audio.cpp \
    mtk_fence.cpp \
    mtk_omx.cpp \
    mtk_cam.cpp \
    mtk_ui.cpp

LOCAL_SHARED_LIBRARIES := libbinder liblog libgui libui libicuuc libicui18n libmedia
LOCAL_MODULE := mtk_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
