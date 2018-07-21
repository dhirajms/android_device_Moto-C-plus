LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_CPPFLAGS := -std=c++1y -Weverything
LOCAL_CPPFLAGS += -Wno-exit-time-destructors
LOCAL_CPPFLAGS += -Wno-global-constructors
LOCAL_CPPFLAGS += -Wno-c++98-compat-pedantic
LOCAL_CPPFLAGS += -Wno-four-char-constants
LOCAL_CPPFLAGS += -Wno-padded

LOCAL_SRC_FILES := \
	Fence.cpp \
	GraphicBuffer.cpp \
	frameworks/native/libs/ui/FrameStats.cpp \
	frameworks/native/libs/ui/Gralloc1.cpp \
	frameworks/native/libs/ui/Gralloc1On0Adapter.cpp \
	frameworks/native/libs/ui/GraphicBufferAllocator.cpp \
	frameworks/native/libs/ui/GraphicBufferMapper.cpp \
	frameworks/native/libs/ui/HdrCapabilities.cpp \
	frameworks/native/libs/ui/PixelFormat.cpp \
	frameworks/native/libs/ui/Rect.cpp \
	frameworks/native/libs/ui/Region.cpp \
	frameworks/native/libs/ui/UiConfig.cpp

LOCAL_SHARED_LIBRARIES := \
	libbinder \
	libcutils \
	libhardware \
	libsync \
	libutils \
	liblog

LOCAL_CFLAGS += -DMTK_HARDWARE
	LOCAL_CPPFLAGS += -Wno-extra-semi -Wno-zero-length-array -Wno-gnu-statement-expression
	LOCAL_CPPFLAGS += -D__STDC_FORMAT_MACROS

	LOCAL_SRC_FILES += \
		mediatek/Fence.cpp \
		mediatek/IDumpTunnel.cpp \
		mediatek/RefBaseDump.cpp

	LOCAL_SHARED_LIBRARIES += \
		libbinder

ifneq ($(BOARD_FRAMEBUFFER_FORCE_FORMAT),)
LOCAL_CFLAGS += -DFRAMEBUFFER_FORCE_FORMAT=$(BOARD_FRAMEBUFFER_FORCE_FORMAT)
endif

ifeq ($(BOARD_EGL_NEEDS_HANDLE_VALUE),true)
LOCAL_CFLAGS += -DEGL_NEEDS_HANDLE
endif

######################
LOCAL_MODULE := mtk-ui
######################

include $(BUILD_SHARED_LIBRARY)

ifeq (,$(ONE_SHOT_MAKEFILE))
include $(call first-makefiles-under,$(LOCAL_PATH))
endif
