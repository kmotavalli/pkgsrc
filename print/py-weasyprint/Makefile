# $NetBSD: Makefile,v 1.14 2018/03/26 00:35:34 joerg Exp $

DISTNAME=	WeasyPrint-0.42.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
PKGREVISION=	1
CATEGORIES=	print python
MASTER_SITES=	${MASTER_SITE_PYPI:=W/WeasyPrint/}

MAINTAINER=	kleink@NetBSD.org
HOMEPAGE=	http://weasyprint.org/
COMMENT=	Converts HTML/CSS documents to PDF
LICENSE=	modified-bsd

.include "../../lang/python/egg.mk"

DEPENDS+=	pango-[0-9]*:../../devel/pango
.if ${_PYTHON_VERSION} > 30
DEPENDS+=	${PYPKGPREFIX}-cairosvg>=1.0.20:../../converters/py-cairosvg
.else
DEPENDS+=	${PYPKGPREFIX}-cairosvg>=1.0.20<2:../../converters/py27-cairosvg
.endif
DEPENDS+=	${PYPKGPREFIX}-cairocffi>=0.5:../../graphics/py-cairocffi
DEPENDS+=	${PYPKGPREFIX}-cffi>=0.6:../../devel/py-cffi
DEPENDS+=	${PYPKGPREFIX}-cssselect2>=0.1:../../textproc/py-cssselect2
DEPENDS+=	${PYPKGPREFIX}-html5lib>=0.999999999:../../textproc/py-html5lib
DEPENDS+=	${PYPKGPREFIX}-pdfrw>=0.4:../../textproc/py-pdfrw
DEPENDS+=	${PYPKGPREFIX}-pyphen>=0.8:../../textproc/py-pyphen
DEPENDS+=	${PYPKGPREFIX}-tinycss2>=0.5:../../textproc/py-tinycss2
TEST_DEPENDS+=	${PYPKGPREFIX}-test-cov-[0-9]*:../../devel/py-test-cov
TEST_DEPENDS+=	${PYPKGPREFIX}-test-flake8-[0-9]*:../../devel/py-test-flake8
TEST_DEPENDS+=	${PYPKGPREFIX}-test-isort-[0-9]*:../../devel/py-test-isort
TEST_DEPENDS+=	${PYPKGPREFIX}-test-runner-[0-9]*:../../devel/py-test-runner

USE_LANGUAGES=	# none

.include "../../mk/bsd.pkg.mk"
