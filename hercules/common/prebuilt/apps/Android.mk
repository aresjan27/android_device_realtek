LOCAL_PATH := $(my-dir)
##############################
include $(CLEAR_VARS)

LOCAL_MODULE := SampleTvInput
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_CERTIFICATE := platform

#LOCAL_MODULE_TARGET_ARCH := arm
#LOCAL_BUILT_MODULE_STEM := package.apk
#LOCAL_PRIVILEGED_MODULE := true

#LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_PREBUILT)
##############################
ifneq ($(ENABLE_LOW_RAM),true)
include $(CLEAR_VARS)

LOCAL_MODULE := ninja
LOCAL_SRC_FILES := ninja.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := .apk
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_TARGET_ARCH := arm
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
endif
##############################
include $(CLEAR_VARS)

LOCAL_MODULE := NetworkLocation
LOCAL_SRC_FILES := NetworkLocation.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
