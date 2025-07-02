################################################################################
#
# V3S_H264_UDP
#
################################################################################

V3S_H264_UDP_VERSION = main
V3S_H264_UDP_SITE = https://github.com/vanwkhanhs/v3s_h264_udp.git
V3S_H264_UDP_SITE_METHOD = git
V3S_H264_UDP_DEPENDENCIES = libcedarc libv4l

define V3S_H264_UDP_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define V3S_H264_UDP_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/main $(TARGET_DIR)/root/h264_udp
endef

$(eval $(generic-package))

