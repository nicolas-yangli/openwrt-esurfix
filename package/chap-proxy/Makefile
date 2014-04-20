#
# Copyright (C) 2006-2011 OpenWrt.org
# Copyright (C) 2014 Yang Li
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=chap-proxy
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PKG_SOURCE:=v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/BillLeecn/chap-proxy/archive/
PKG_MD5SUM:=0adfdf24b6ef6f03b041df71e24a537e

include $(INCLUDE_DIR)/package.mk

define Package/chap-proxy
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+ppp +rp-pppoe-server
  TITLE:=CHAP Proxy
  PKGARCH:=all
endef

define Package/chap-proxy/description
  a daemon to proxy PPP CHAP response
endef

define Package/chap-proxy/conffiles
/etc/default/chap-proxy
endef

define Package/chap-proxy/install
	$(INSTALL_DIR) $(1)/etc/default
	$(INSTALL_CONF) ./files/chap-proxy.default $(1)/etc/default/chap-proxy
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/chap-proxy.init $(1)/etc/init.d/chap-proxy
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./files/connect_script $(1)/usr/bin/connect_script
	$(INSTALL_DIR) $(1)/usr/sbin
	$(CP) $(PKG_BUILD_DIR)/src/chap-proxy $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,chap-proxy))
