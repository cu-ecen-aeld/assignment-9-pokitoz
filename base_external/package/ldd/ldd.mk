LDD_VERSION = 5c3cae6ddc96b8645dfa6f6bc4ddbba08aae8789
LDD_SITE = 'https://github.com/cu-ecen-aeld/assignment-7-pokitoz'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

#define LDD_BUILD_CMDS
#	ARCH=arm64 KDIR=$(BUILD_DIR)/linux-$(BR2_LINUX_KERNEL_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules
#	ARCH=arm64 KDIR=$(BUILD_DIR)/linux-$(BR2_LINUX_KERNEL_VERSION) $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull
#endef

LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

#define LDD_INSTALL_TARGET_CMDS
#	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin/
#	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin/
#	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin/
#	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin/
#endef

define LDD_INSTALL_TARGET_CMDS
 	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
 	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
 	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
 	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
