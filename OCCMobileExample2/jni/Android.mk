#
# ANDROID Makefile for OCC - use as template
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libTKPrim
LOCAL_SRC_FILES := libTKPrim.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libTKMath
LOCAL_SRC_FILES := libTKMath.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libTKernel 
LOCAL_SRC_FILES := libTKernel.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libTKG2d
LOCAL_SRC_FILES := libTKG2d.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libTKBRep
LOCAL_SRC_FILES := libTKBRep.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libTKGeomBase
LOCAL_SRC_FILES := libTKGeomBase.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libTKG3d
LOCAL_SRC_FILES := libTKG3d.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libTKTopAlgo
LOCAL_SRC_FILES := libTKTopAlgo.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libTKGeomAlgo
LOCAL_SRC_FILES := libTKGeomAlgo.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libirrlicht
LOCAL_SRC_FILES := libirrlicht.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := occ_native
LOCAL_CPPFLAGS += -DHAVE_IOSTREAM -DHAVE_FSTREAM -DHAVE_LIMITS_H -DHAVE_IOMANIP
LOCAL_SRC_FILES := occ_native.cpp
LOCAL_CFLAGS := -I/home/arch/OCCANDROID/OCCMobileExample2/jni -I/home/arch/OCCANDROID/ros/inc -I/home/arch/OCCANDROID/android-ndk-r5c/platforms/android-5/arch-arm/usr/include -I/home/arch/OCCANDROID/android-ndk-r5c/sources/cxx-stl/stlport/stlport
LOCAL_SHARED_LIBRARIES += libTKernel libTKPrim libTKG2d libTKMath libTKBRep libTKGeomBase libTKG3d libTKTopAlgo libTKGeomAlgo
include $(BUILD_SHARED_LIBRARY)