# $NetBSD: Makefile,v 1.15 2017/10/07 07:05:49 adam Exp $

DISTNAME=	pyenchant-1.6.11
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/^py//}
CATEGORIES=	textproc python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pyenchant/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://pythonhosted.org/pyenchant/
COMMENT=	Spellchecking library for Python
LICENSE=	gnu-lgpl-v2.1

.include "../../lang/python/pyversion.mk"

DEPENDS+=	enchant-[0-9]*:../../textproc/enchant

USE_LANGUAGES=	# empty

.include "../../mk/bsd.prefs.mk"

DLEXT.dylib=		dylib
DLEXT=			${DLEXT.${SHLIB_TYPE}:Uso}
PYENCHANT_LIBRARY_PATH=	${PREFIX}/lib/libenchant.${DLEXT}

# fix the path of libenchant with patch-ab.
SUBST_CLASSES+=		dlpath
SUBST_STAGE.dlpath=	pre-configure
SUBST_FILES.dlpath=	enchant/_enchant.py
SUBST_VARS.dlpath=	PYENCHANT_LIBRARY_PATH

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
