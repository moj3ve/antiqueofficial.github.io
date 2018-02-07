ARCHS = armv7 armv7s arm64
TARGET = iphone:clang:latest:latest

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Luminous
Luminous_FILES = Tweak.xm
Luminous_FRAMEWORKS = CoreGraphics CoreFoundation MediaPlayer QuartzCore UIKit 

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 com.toyopagroup.picaboo"
