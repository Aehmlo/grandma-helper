export ARCHS=armv7 arm64
export TARGET=iphone:clang:latest:7.0

include theos/makefiles/common.mk

TWEAK_NAME = GrandmaHelper
GrandmaHelper_FILES = Tweak.xm
GrandmaHelper_FRAMEWORKS = UIKit
GrandmaHelper_LIBRARIES = activator substrate

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd"
