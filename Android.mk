LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),panelli)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
