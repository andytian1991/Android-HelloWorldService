LOCAL_PATH := $(call my-dir)

helloworldservice_module_tags := eng user

include $(CLEAR_VARS)

LOCAL_SRC_FILES := main_helloworldclient.cpp 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../libhelloworldservice/include

LOCAL_CFLAGS += -DPLATFORM_ANDROID

LOCAL_MODULE := helloworldclient

# for now, until I do a full rebuild.
LOCAL_PRELINK_MODULE := false

# LOCAL_LDFLAGS += -llog

LOCAL_SHARED_LIBRARIES += liblog
LOCAL_SHARED_LIBRARIES += libutils libui
LOCAL_SHARED_LIBRARIES += libhelloworldservice

LOCAL_CFLAGS += -Idalvik/libnativehelper/include/nativehelper

include $(BUILD_EXECUTABLE)

