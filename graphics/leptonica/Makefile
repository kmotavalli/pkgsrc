# $NetBSD: Makefile,v 1.13 2018/02/20 09:37:56 adam Exp $

DISTNAME=	leptonica-1.75.3
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GITHUB:=danbloomberg/}

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://www.leptonica.org/
COMMENT=	Software for image processing and image analysis applications
LICENSE=	2-clause-bsd

GITHUB_RELEASE=	${PKGVERSION_NOREV}

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes
TEST_TARGET=		check

.include "../../mk/bsd.prefs.mk"

# The presence of fmemopen() assumes open_memstream() is also available,
# which is wrong on platforms other than Linux.
.if ${OPSYS} != "Linux"
CONFIGURE_ENV+=		ac_cv_func_fmemopen=no
.endif

# Pass a SunOS that the build relies on
CPPFLAGS.SunOS+=	-D__SOLARIS__=1

.include "../../graphics/giflib/buildlink3.mk"
.include "../../graphics/libwebp/buildlink3.mk"
.include "../../graphics/openjpeg/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
