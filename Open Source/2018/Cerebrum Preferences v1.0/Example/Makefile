GO_EASY_ON_ME = 1

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = Cerebrum
Cerebrum_FILES = CUIRootListController.m
Cerebrum_INSTALL_PATH = /Library/PreferenceBundles
Cerebrum_FRAMEWORKS = UIKit
Cerebrum_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Cerebrum.plist$(ECHO_END)
