# $NetBSD: Makefile,v 1.33 2018/03/12 11:16:20 wiz Exp $

# https://bugzilla.gnome.org/show_bug.cgi?id=685094
# https://bugzilla.gnome.org/show_bug.cgi?id=707196
PKGREVISION= 1
.include "../../graphics/py-cairo/buildlink3.mk"
.include "../../graphics/cairo-gobject/buildlink3.mk"
TEST_TARGET=	check

.include "Makefile.common"

PKGNAME=		${PYPKGPREFIX}-gobject3-${VER}

COMMENT=		Python bindings for glib2 gobject

CONFIGURE_ARGS+=	--without-common

.include "../../devel/py-gobject3-common/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
