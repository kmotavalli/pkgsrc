PKGNAME=	pkgconftrack-1.0
CATEGORIES=	pkgtools

MAINTAINER=	keivan@motavalli.me
HOMEPAGE=	https://pkgsrc.org/
COMMENT=	Script that aids in managing manual configuration changes
LICENSE=	2-clause-bsd

.include "../../mk/bsd.prefs.mk"

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1
NO_BUILD=		yes

USE_TOOLS+=		sh
REPLACE_SH=		pkgconftrack

do-extract:
	${RUN} ${CP:Q} -R ${FILESDIR} ${WRKSRC}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pkgconftrack ${DESTDIR}${PREFIX}/bin/pkgconftrack
	${INSTALL_MAN} ${WRKSRC}/pkgconftrack.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../mk/bsd.pkg.mk"
