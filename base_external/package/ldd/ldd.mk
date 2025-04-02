LDD_VERSION = 60b6b9160d7477f734d59111ab66925c3ca04625
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
