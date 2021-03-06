# $NetBSD: Makefile,v 1.9 2018/03/08 21:05:27 he Exp $

# PKGREVISION= 3
.include "Makefile.common"

COMMENT=	Enterprise-class Monitoring Solution for Everyone

DEPENDS+=	fping-[0-9]*:../../net/fping

USE_TOOLS+=		pax pkg-config
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-agent
CONFIGURE_ARGS+=	--enable-proxy
CONFIGURE_ARGS+=	--enable-server
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR}
CONFIGURE_ARGS+=	--with-iconv=${BUILDLINK_PREFIX.iconv}
CONFIGURE_ARGS+=	--with-jabber
CONFIGURE_ARGS+=	--with-ldap=${BUILDLINK_PREFIX.openldap-client}
CONFIGURE_ARGS+=	--with-libcurl
CONFIGURE_ARGS+=	--with-libxml2
CONFIGURE_ARGS+=	--with-openssl=${BUILDLINK_PREFIX.openssl}

EGDIR=		share/examples/zabbix
CONF_FILES+=	${EGDIR}/zabbix_agentd.conf ${PKG_SYSCONFDIR}/zabbix_agentd.conf
CONF_FILES+=	${EGDIR}/zabbix_proxy.conf ${PKG_SYSCONFDIR}/zabbix_proxy.conf
CONF_FILES+=	${EGDIR}/zabbix_server.conf ${PKG_SYSCONFDIR}/zabbix_server.conf

RCD_SCRIPTS=	zabbix_agentd zabbix_proxy zabbix_server

INSTALLATION_DIRS+=	${EGDIR} share/zabbix

SUBST_CLASSES+=		fix-paths
SUBST_STAGE.fix-paths=	pre-configure
SUBST_MESSAGE.fix-paths=Fixing absolute paths.
SUBST_FILES.fix-paths=	conf/*.conf
SUBST_FILES.fix-paths+=	man/*.man
SUBST_SED.fix-paths=	-e 's,/usr/local/etc,${PKG_SYSCONFDIR},g'

.include "../../mk/bsd.prefs.mk"

ZABBIX_GROUP?=		zabbix
ZABBIX_USER?=		zabbix
PKG_GROUPS+=		${ZABBIX_GROUP}
PKG_USERS+=		${ZABBIX_USER}:${ZABBIX_GROUP}
PKG_GECOS.${ZABBIX_USER}=Zabbix user

post-install:
	cd ${WRKSRC}/database/${ZABBIX_DB_TYPE}; \
		${PAX} -rw . ${DESTDIR}${PREFIX}/share/zabbix/

.include "options.mk"

.include "../../converters/libiconv/buildlink3.mk"
.include "../../databases/openldap-client/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../textproc/iksemel/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
