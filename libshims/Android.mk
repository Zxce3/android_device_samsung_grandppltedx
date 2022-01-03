LOCAL_PATH := $(call my-dir)

# cannot locate symbol "ifc_set_throttle" referenced by "thermal"...
include $(CLEAR_VARS)
LOCAL_SRC_FILES := thermal_shim.cpp
LOCAL_MODULE := libshim_thermal
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

# backport from cm14
include $(CLEAR_VARS)
LOCAL_SRC_FILES := camera_shim.c
LOCAL_MODULE := libshim_camera
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

# cannot locate symbol "__xlog_buf_printf" referenced by <insert MTK stuff here>
include $(CLEAR_VARS)
LOCAL_SRC_FILES := xlog_shim.c
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE := liblog_mtk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)
