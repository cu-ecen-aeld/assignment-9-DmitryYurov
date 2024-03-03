##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 71f9f5263c80e2ccc8311dd5d427fa1204a78c1a
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-DmitryYurov.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

define LDD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules modules
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull modules
endef

#define LDD_INSTALL_TARGET_CMDS
#	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/aesdsocket
#	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
#endef

$(eval $(generic-package))