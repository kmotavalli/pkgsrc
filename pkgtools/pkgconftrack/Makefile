PKGNAME=	pkgconftrack-1.0
CATEGORIES=	pkgtools

MAINTAINER=	keivan@motavalli.me		
HOMEPAGE=	ftp://ftp.NetBSD.org/pub/NetBSD/packages/pkgsrc/doc/pkgsrc.html
COMMENT=	Script that easily registers in pkgsrc manual configuration changes for a package
LICENSE=	2-clause-bsd	

.include "../../mk/bsd.prefs.mk"

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1
NO_BUILD=	yes

do-extract:
	@${CP} -R ${FILESDIR} ${WRKSRC}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pkgconftrack ${DESTDIR}${PREFIX}/bin/pkgconftrack
	${INSTALL_MAN} ${WRKSRC}/pkgconftrack.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"
