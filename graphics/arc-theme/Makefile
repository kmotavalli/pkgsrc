# $NetBSD: Makefile,v 1.8 2018/03/12 11:16:38 wiz Exp $

DISTNAME=	arc-theme
PKGNAME=	arc-theme-20160605
PKGREVISION=	5
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=horst3180/}

MAINTAINER=	youri@NetBSD.org
HOMEPAGE=	https://github.com/horst3180/arc-theme/
COMMENT=	Arch theme for GTK2, GTK3 and desktops
LICENSE=	gnu-gpl-v3

GITHUB_PROJECT=	arc-theme
GITHUB_TAG=	20160605

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	automake pkg-config intltool
DEPENDS+=	gtk2-engines-murrine-[0-9]*:../../x11/gtk2-engines-murrine
DEPENDS+=	gnome-themes-standard-[0-9]*:../../graphics/gnome-themes-standard

pre-configure:
	${LN} -s 3.20 ${WRKSRC}/common/gtk-3.0/3.22
	${LN} -s 3.20 ${WRKSRC}/common/gnome-shell/3.22
	cd ${WRKSRC} && autoreconf --verbose --force --install

.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
