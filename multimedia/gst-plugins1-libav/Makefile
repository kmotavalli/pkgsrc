# $NetBSD: Makefile,v 1.39 2018/03/12 11:17:12 wiz Exp $

DISTNAME=	gst-libav-1.12.4
PKGNAME=	${DISTNAME:S/gst/gst-plugins1/}
PKGREVISION=	2
CATEGORIES=	multimedia
MASTER_SITES=	https://gstreamer.freedesktop.org/src/gst-libav/
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://gstreamer.freedesktop.org/src/gst-libav/
COMMENT=	GStreamer libav/ffmpeg plugin

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config gmake perl
PKGSRC_MAKE_ENV+=	PERL=${PERL5}

#BUILD_DEPENDS+=		yasm>=0.7.2:../../devel/yasm

BUILDLINK_API_DEPENDS.gstreamer1+=	gstreamer1>=1.10.0
.include "../../multimedia/gstreamer1/buildlink3.mk"
.include "../../multimedia/gst-plugins1-base/buildlink3.mk"
# the upstream developers only want to support building against
# the included ffmpeg version, since the ffmpeg API/ABI is unstable
# and there are no releases
.include "../../multimedia/ffmpeg3/buildlink3.mk"
CONFIGURE_ARGS+=	--with-system-libav
.include "../../devel/orc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
