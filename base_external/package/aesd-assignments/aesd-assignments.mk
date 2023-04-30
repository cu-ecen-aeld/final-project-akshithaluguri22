
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = '7fb9a4a75d85f16565b8e6b14fddfe9d316ea148'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = 'git@github.com:akshithaluguri22/final-project-AkshithAluguri-Appcode.git'
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/Humidity_sens all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/Tmp102_sens all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/Humidity_sens/humidity $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/Tmp102_sens/temperature $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
