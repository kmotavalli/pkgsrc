# $NetBSD: Makefile,v 1.10 2018/03/12 11:16:10 wiz Exp $

PKGREVISION= 7
.include "../../meta-pkgs/kde-telepathy/Makefile.common"
DISTNAME=	ktp-contact-list-${KTP_VERSION}
CATEGORIES=	chat kde
MASTER_SITES=	${MASTER_SITE_KDE:=kde-telepathy/${KTP_VERSION}/src/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://community.kde.org/KTp
COMMENT=	KDE instant messaging contact list application
LICENSE=	gnu-lgpl-v2.1

USE_LANGUAGES=	c c++
USE_TOOLS+=	msgfmt

BUILD_DEPENDS+=	automoc4>=0.9.87:../../devel/automoc4

.include "../../chat/ktp-common-internals/buildlink3.mk"
.include "../../meta-pkgs/kde4/kde4.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
