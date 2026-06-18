PORTNAME=		endless-sky-high-dpi
DISTVERSION=    g20260525
CATEGORIES=     games
MASTER_SITES=   GH
PKGNAMESUFFIX=  -dev

MAINTAINER=	nope@nothere
COMMENT=	High-DPI graphics for Endless Sky
WWW=		https://github.com/endless-sky/endless-sky-high-dpi

LICENSE=		CC-BY-3.0 CC-BY-SA-3.0 CC-BY-SA-4.0 PD
LICENSE_COMB=	multi

RUN_DEPENDS=	endless-sky:games/endless-sky

USE_GITHUB=		yes
GH_ACCOUNT=		endless-sky
GH_PROJECT=		endless-sky-high-dpi
GH_TAGNAME=		534a77510c4c710ddcaee7b94c844b342905acc2

CONFLICTS=		endless-sky-high-dpi

DATADIR=		${PREFIX}/share/endless-sky/plugins/${PORTNAME}

NO_BUILD=		yes
NO_ARCH=		yes

#PORTDATA=		*

do-install:
	@cd ${WRKSRC} && ${COPYTREE_SHARE} "images" ${STAGEDIR}${DATADIR}

.include <bsd.port.mk>
