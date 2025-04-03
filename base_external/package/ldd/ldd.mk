LDD_VERSION = 3b11daffac515e71bf6132a6b044d6f68a887070
LDD_SITE = 'https://github.com/cu-ecen-aeld/assignments-3-and-later-pokitoz'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = aesd-char-driver


define LDD_INSTALL_TARGET_CMDS
 	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
 	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin

	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))
