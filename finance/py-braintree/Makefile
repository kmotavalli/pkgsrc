# $NetBSD: Makefile,v 1.7 2018/03/01 08:03:51 adam Exp $

DISTNAME=	braintree-3.42.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	finance python
MASTER_SITES=	${MASTER_SITE_PYPI:=b/braintree/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://developers.braintreepayments.com/python/sdk/server/overview
COMMENT=	Braintree Python Library
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-requests>=0.11.1:../../devel/py-requests

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
