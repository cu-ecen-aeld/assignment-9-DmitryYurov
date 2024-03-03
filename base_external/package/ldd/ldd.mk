##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 71f9f5263c80e2ccc8311dd5d427fa1204a78c1a
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-DmitryYurov.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules scull

$(eval $(kernel-module))
$(eval $(generic-package))
