LOCAL_PATH := $(call my-dir)

###########################
#
# VBE-Physics2D static library
#
###########################

include $(CLEAR_VARS)

LOCAL_MODULE := VBE_Physics2D_static
LOCAL_MODULE_FILENAME := libVBE_Physics2D

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include $(LOCAL_PATH)/src
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_SRC_FILES := \
	$(subst $(LOCAL_PATH)/,, \
	$(wildcard $(LOCAL_PATH)/src/VBE-Physics2D/physics2D/*.cpp) \
	)

LOCAL_CFLAGS += -std=c++11
LOCAL_EXPORT_LDLIBS := -ldl -llog -landroid
LOCAL_STATIC_LIBRARIES := android_native_app_glue

include $(BUILD_STATIC_LIBRARY)

$(call import-module,android/native_app_glue)
