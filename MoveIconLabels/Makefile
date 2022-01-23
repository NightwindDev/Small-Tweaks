TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard

FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MoveIconLabels

MoveIconLabels_FILES = Tweak.x
MoveIconLabels_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += moveiconlabelsprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
