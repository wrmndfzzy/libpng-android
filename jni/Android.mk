LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := libpng
LOCAL_SRC_FILES := \
	png.c \
	pngerror.c \
	pngget.c \
	pngmem.c \
	pngpread.c \
	pngread.c \
	pngrio.c \
	pngrtran.c \
	pngrutil.c \
	pngset.c \
	pngtrans.c \
	pngwio.c \
	pngwrite.c \
	pngwtran.c \
	pngwutil.c \

LOCAL_SRC_FILES_arm := \
			arm/arm_init.c \
			arm/filter_neon.S \
      arm/filter_neon_intrinsics.c

LOCAL_CFLAGS := -std=gnu89 -Wno-unused-parameter -O3
LOCAL_CFLAGS_arm := -DPNG_ARM_NEON_OPT=2
LOCAL_CFLAGS_arm64 := -DPNG_ARM_NEON_OPT=2
#LOCAL_SHARED_LIBRARIES := -lz
LOCAL_EXPORT_LDLIBS := -lz
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/.

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
