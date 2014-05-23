LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:= main.qml
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT)/examples/qml

LOCAL_SHARED_LIBRARIES := \
	libQtCore

include $(BUILD_SYSTEM)/binary.mk

file := $(TARGET_ROOT_OUT)/init.klaatu-qt.rc
$(file) : $(LOCAL_PATH)/init.klaatu-qt.rc | $(TARGET_ROOT_OUT)/init.klaatu.rc $(ACP)
	$(transform-prebuilt-to-target)
	echo "import /init.klaatu-qt.rc" >> $(TARGET_ROOT_OUT)/init.klaatu.rc
	echo "qt Qt/QML" >> $(TARGET_ROOT_OUT)/UIs.txt
ALL_MODULES += $(file)
ALL_DEFAULT_INSTALLED_MODULES += $(file)

file := $(TARGET_OUT)/examples/qml/samegame
$(file) : $(LOCAL_PATH)/../cambridge-qtdeclarative/examples/demos/samegame
	mkdir -p $@
	$(hide) cp -a $</*.qml $</content  $@
ALL_MODULES += $(file)
ALL_DEFAULT_INSTALLED_MODULES += $(file)

file := $(LOCAL_INSTALLED_MODULE)
$(file): where := $(LOCAL_PATH)
$(file): $(LOCAL_PATH)/main.qml
	mkdir -p $(TARGET_OUT)/examples/qml
	cp $< $(TARGET_OUT)/examples/qml

# Force this file to get installed
ALL_DEFAULT_INSTALLED_MODULES += $(file)
