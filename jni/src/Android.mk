LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../SDL2-2.0.14

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include \
					$(LOCAL_PATH)/include

# Add your application source files here...
LOCAL_SRC_FILES := main.c calendar.c calendarView.c

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image SDL2_mixer SDL2_ttf

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog

include $(BUILD_SHARED_LIBRARY)
