# Copyright Statement:
#
# This software/firmware and related documentation ("MediaTek Software") are
# protected under relevant copyright laws. The information contained herein
# is confidential and proprietary to MediaTek Inc. and/or its licensors.
# Without the prior written permission of MediaTek inc. and/or its licensors,
# any reproduction, modification, use or disclosure of MediaTek Software,
# and information contained herein, in whole or in part, shall be strictly prohibited.
#
# MediaTek Inc. (C) 2010. All rights reserved.
#
# BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES
# THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK SOFTWARE")
# RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO RECEIVER ON
# AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT.
# NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER WITH RESPECT TO THE
# SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, INCORPORATED IN, OR
# SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER AGREES TO LOOK ONLY TO SUCH
# THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES
# THAT IT IS RECEIVER'S SOLE RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES
# CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR ANY MEDIATEK
# SOFTWARE RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO CONFORM TO A PARTICULAR
# STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND
# CUMULATIVE LIABILITY WITH RESPECT TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,
# AT MEDIATEK'S OPTION, TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,
# OR REFUND ANY SOFTWARE LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TO
# MEDIATEK FOR SUCH MEDIATEK SOFTWARE AT ISSUE.
#
# The following software/firmware and/or related documentation ("MediaTek Software")
# have been modified by MediaTek Inc. All revisions are subject to any receiver's
# applicable license agreements with MediaTek Inc.


LOCAL_PATH:= $(call my-dir)


#
# libui_ext.so
#

include $(CLEAR_VARS)
LOCAL_MODULE := libui_ext
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	lib/FpsCounter.cpp \
	lib/GraphicBufferUtil.cpp \
	lib/SWWatchDog.cpp

LOCAL_C_INCLUDES := \
	device/moto/panelli/libgem/inc \
	frameworks/native/libs/nativewindow/include \
	frameworks/native/libs/nativebase/include \
	frameworks/native/libs/arect/include \
	external/libpng \
	external/zlib \
	external/skia/src/images \
	external/skia/include/core

LOCAL_SHARED_LIBRARIES := \
	libutils \
	libcutils \
	liblog \
	libbinder \
	libhardware \
	libdl \
	libgralloc_extra \
	libpng \
	libui

ifeq (, $(findstring MTK_AOSP_ENHANCEMENT, $(MTK_GLOBAL_CFLAGS)))
	LOCAL_SRC_FILES += \
		lib/IDumpTunnel.cpp \
		lib/RefBaseDump.cpp
endif


include $(BUILD_SHARED_LIBRARY)



#
# libgui_ext.so
#

include $(CLEAR_VARS)
LOCAL_MODULE := libgui_ext
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	lib/IGuiExtService.cpp \
	lib/GuiExtService.cpp \
	lib/GuiExtClient.cpp \
	lib/GuiExtClientProducer.cpp \
	lib/GuiExtClientConsumer.cpp \
	lib/GuiExtImpl.cpp

LOCAL_C_INCLUDES := \
	device/moto/panelli/libgem/inc

LOCAL_SHARED_LIBRARIES := \
	libutils \
	libcutils \
	libbinder \
	libhardware \
	libhardware_legacy \
	libgui \
	liblog \
	libui \
	libdl \
	libion \
	libion_mtk \
	libgralloc_extra \
	libui_ext

include $(BUILD_SHARED_LIBRARY)

include $(call all-makefiles-under,$(LOCAL_PATH))
