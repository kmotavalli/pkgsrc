# $NetBSD: Makefile,v 1.1 2017/09/17 09:29:55 wiz Exp $

DISTNAME=	Devel-OverrideGlobalRequire-0.001
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5 net
MASTER_SITES=	http://search.cpan.org/CPAN/authors/id/D/DA/DAGOLDEN/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~dagolden/Devel-OverrideGlobalRequire/
COMMENT=	Perl 5 package that overrides CORE::GLOBAL::require safely
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		c
PERL5_PACKLIST=		auto/Devel/OverrideGlobalRequire/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
