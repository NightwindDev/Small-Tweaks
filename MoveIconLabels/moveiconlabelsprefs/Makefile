TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = MoveIconLabelsPrefs

MoveIconLabelsPrefs_FILES = MILRootListController.m
MoveIconLabelsPrefs_FRAMEWORKS = UIKit
MoveIconLabelsPrefs_PRIVATE_FRAMEWORKS = Preferences
MoveIconLabelsPrefs_INSTALL_PATH = /Library/PreferenceBundles
MoveIconLabelsPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
