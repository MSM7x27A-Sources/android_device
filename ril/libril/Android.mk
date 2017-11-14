# Copyright 2006 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)

ifeq ($(BOARD_PROVIDES_LIBRIL),true)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    ril.cpp \
    ril_event.cpp

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/../include

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libutils \
    libbinder \
    libcutils \
    libhardware_legacy

LOCAL_CFLAGS :=

LOCAL_MODULE:= libril

include $(BUILD_SHARED_LIBRARY)
endif
