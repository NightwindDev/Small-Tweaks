TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = arm64 arm64e

FINALPACKAGE=1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SafariTabBar

SafariTabBar_FILES = Tweak.x
SafariTabBar_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
