# $NetBSD: Makefile,v 1.12 2018/03/12 11:16:48 wiz Exp $

MODNAME=		imagick
PECL_VERSION=		3.4.3
CATEGORIES+=		graphics

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://pecl.php.net/package/imagick/
COMMENT=		PHP extension for ImageMagick graphics library
PKGREVISION=		3
LICENSE=		php

PHP_VERSIONS_ACCEPTED=	56 70 71 72

CONFIGURE_ARGS+=	--with-imagick=${BUILDLINK_PREFIX.ImageMagick}

TEST_TARGET=		test

.include "../../graphics/ImageMagick/buildlink3.mk"
.include "../../lang/php/ext.mk"
.include "../../mk/bsd.pkg.mk"
