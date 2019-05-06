export IPHONE_ARCHS = arm64 arm64e
export TARGET = iphone::9.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FastTracky
FastTracky_FILES = Tweak.xm
FastTracky_USE_SUBSTRATE = 0
FastTracky_LOGOS_DEFAULT_GENERATOR = internal

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MobileNotes"
