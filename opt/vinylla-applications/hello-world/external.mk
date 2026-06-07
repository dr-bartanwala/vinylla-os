#hello world
HELLO_WORLD_VERSION = 1.0
HELLO_WORLD_SITE = $(BR2_EXTERNAL_RPI0W_Vinylla_PATH)/../vinylla-applications/hello-world
HELLO_WORLD_SITE_METHOD = local

define HELLO_WORLD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

#install command combines mkdir, cp and chmod into one

define HELLO_WORLD_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/hello_world $(TARGET_DIR)/opt/src/hello_world
endef

$(eval $(generic-package))
