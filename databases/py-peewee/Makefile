# $NetBSD: Makefile,v 1.29 2018/03/16 12:06:03 fhajny Exp $

DISTNAME=	peewee-3.1.5
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_GITHUB:=coleifer/}

MAINTAINER=	filip@joyent.com
HOMEPAGE=	http://www.peewee-orm.com/
COMMENT=	Small, expressive ORM for PostgreSQL, MySQL and SQLite
LICENSE=	mit

GITHUB_PROJECT=	peewee

USE_LANGUAGES=	c
USE_TOOLS+=	bash

BUILD_DEPENDS+=	${PYPKGPREFIX}-sphinx-[0-9]*:../../textproc/py-sphinx

MAKE_FLAGS+=	SPHINXBUILD=sphinx-build${PYVERSSUFFIX}

FILES_SUBST+=	PKGMANDIR=${PKGMANDIR}
MESSAGE_SUBST+=	PYPKGPREFIX=${PYPKGPREFIX}

REPLACE_PYTHON+=	pwiz.py

PYDISTUTILSPKG=		yes

INSTALLATION_DIRS+=	${PKGMANDIR}/man1

post-build:
	cd ${WRKSRC}/docs && ${BUILD_MAKE_CMD} man

post-install:
	${MV} ${DESTDIR}${PREFIX}/bin/pwiz.py \
		${DESTDIR}${PREFIX}/bin/pwiz${PYVERSSUFFIX}
	${INSTALL_MAN} ${WRKSRC}/docs/_build/man/peewee.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/peewee${PYVERSSUFFIX}.1

do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} ${PYTHONBIN} runtests.py

.include "../../devel/py-cython/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
