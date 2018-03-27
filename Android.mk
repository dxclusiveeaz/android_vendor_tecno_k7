LOCAL_PATH := $(call my-dir)

ifneq ($(filter mx, $(TARGET_DEVICE)),)
 
include $(CLEAR_VARS)
LOCAL_MODULE = libdpframework
LOCAL_MODULE_CLASS = SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX = .so
LOCAL_MULTILIB = 32
LOCAL_SRC_FILES_32 = vendor/lib/libdpframework.so
include $(BUILD_PREBUILT)

endif
