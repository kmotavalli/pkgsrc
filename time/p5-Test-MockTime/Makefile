# $NetBSD: Makefile,v 1.13 2018/02/25 19:08:28 wiz Exp $

DISTNAME=	Test-MockTime-0.16
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	time perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/perldoc?Test::MockTime
COMMENT=	Replaces actual time with simulated time
LICENSE=	${PERL5_LICENSE}

# for make test
BUILD_DEPENDS+=	p5-Test-Pod-[0-9]*:../../devel/p5-Test-Pod

USE_LANGUAGES=	c # installs C module
PERL5_PACKLIST=	auto/Test/MockTime/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
