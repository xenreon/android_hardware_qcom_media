ifeq ($(TARGET_QCOM_MEDIA_VARIANT),caf-sm8150)

QCOM_MEDIA_ROOT := $(call my-dir)

#Compile these for all targets under QCOM_BOARD_PLATFORMS list.
include $(QCOM_MEDIA_ROOT)/libstagefrighthw/Android.mk
include $(QCOM_MEDIA_ROOT)/mm-core/Android.mk

include $(QCOM_MEDIA_ROOT)/libplatformconfig/Android.mk
include $(QCOM_MEDIA_ROOT)/mm-video-v4l2/Android.mk
include $(QCOM_MEDIA_ROOT)/libc2dcolorconvert/Android.mk
include $(QCOM_MEDIA_ROOT)/libarbitrarybytes/Android.mk
ifeq ($(ENABLE_HYP),true)
include $(QCOM_MEDIA_ROOT)/hypv-intercept/Android.mk
endif
endif
