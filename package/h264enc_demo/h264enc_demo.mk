################################################################################
#
# H264ENC_DEMO
#
################################################################################

V3S_H264_UDP_VERSION = master
V3S_H264_UDP_SITE = https://github.com/vanwkhanhs/h264enc_demo.git
V3S_H264_UDP_SITE_METHOD = git
V3S_H264_UDP_DEPENDENCIES = libcedarc libv4l

define H264ENC_DEMO_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define H264ENC_DEMO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/main $(TARGET_DIR)/root/h264enc_demo
endef

$(eval $(generic-package))
