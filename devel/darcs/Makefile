# $NetBSD: Makefile,v 1.44 2018/01/01 21:18:20 adam Exp $

DISTNAME=		darcs-2.0.2
PKGREVISION=		18
CATEGORIES=		devel scm
MASTER_SITES=		http://darcs.net/releases/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.darcs.net/
COMMENT=		Distributed revision control system

BUILD_DEPENDS+=		latex2html>=2002.2.1nb3:../../textproc/latex2html
BUILD_DEPENDS+=		tex-fancyvrb-[0-9]*:../../print/tex-fancyvrb

USE_TOOLS+=		gmake perl
MAKE_FILE=		GNUmakefile
GNU_CONFIGURE=		yes

.include "../../www/curl/buildlink3.mk"
.include "../../lang/ghc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
