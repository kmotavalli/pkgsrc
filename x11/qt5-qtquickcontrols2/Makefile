# $NetBSD: Makefile,v 1.3 2018/03/12 11:15:56 wiz Exp $

DISTNAME=	qtquickcontrols2-everywhere-src-${QTVERSION}
PKGNAME=	qt5-qtquickcontrols2-${QTVERSION}
PKGREVISION=	1
COMMENT=	Next generation user interface controls based on Qt Quick

BUILD_TARGET=		sub-src
MAKE_ENV+=		QTDIR=${QTDIR}

INSTALL_ENV+=		INSTALL_ROOT=${DESTDIR}

.include "../../x11/qt5-qtbase/Makefile.common"

.include "../../x11/qt5-qtdeclarative/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
