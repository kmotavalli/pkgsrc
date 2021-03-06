# $NetBSD: Makefile,v 1.20 2018/04/01 04:27:29 markd Exp $

DISTNAME=	khtml-${KF5VER}
PKGREVISION=	4
CATEGORIES=	www

HOMEPAGE=	https://community.kde.org/Frameworks
COMMENT=	HTML rendering engine
LICENSE=	gnu-gpl-v3 AND gnu-lgpl-v2.1

.include "../../meta-pkgs/kf5/Makefile.common"
MASTER_SITES=	${MASTER_SITE_KDE:=frameworks/5.41/portingAids/}

USE_TOOLS+=	perl msgfmt

# generation of kded.moc fails when ${PREFIX}/include in the moc include path
SUBST_CLASSES+=	fix-moc
SUBST_STAGE.fix-moc=	post-configure
SUBST_MESSAGE.fix-moc=	Cleaning up MOC includes
SUBST_FILES.fix-moc=	_KDE_build/src/CMakeFiles/khtmlpart_autogen.dir/AutogenInfo.cmake 
SUBST_FILES.fix-moc+=	_KDE_build/src/CMakeFiles/khtmlimagepart_autogen.dir/AutogenInfo.cmake 
SUBST_FILES.fix-moc+=	_KDE_build/src/kmultipart/CMakeFiles/kmultipart_autogen.dir/AutogenInfo.cmake 
SUBST_SED.fix-moc=	-e 's,;${PREFIX}/include;,;,g'

SUBST_CLASSES+=		xdg
SUBST_STAGE.xdg=	pre-configure
SUBST_MESSAGE.xdg=	Install via examples dir.
SUBST_FILES.xdg=	src/CMakeLists.txt
SUBST_SED.xdg=		-e 's:{KDE_INSTALL_CONFDIR}:{KDE_INSTALL_DATAROOTDIR}/examples/kde-xdg:'

MAKE_DIRS+=	${PKG_SYSCONFDIR}/xdg
CONF_FILES+=	${PREFIX}/share/examples/kde-xdg/khtmlrc \
		${PKG_SYSCONFDIR}/xdg/khtmlrc

.include "../../devel/gperf/buildlink3.mk"
.include "../../graphics/giflib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../www/kjs/buildlink3.mk"
.include "../../devel/kparts/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
