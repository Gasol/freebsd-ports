# Created by: Marco Broeder <marco.broeder@posteo.eu>
# $FreeBSD: head/devel/hg-git/Makefile 462649 2018-02-22 22:59:37Z jbeich $

PORTNAME=	hg-git
DISTVERSION=	0.8.10
PORTREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	http://bitbucket.org/durin42/${PORTNAME}/get/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PORTVERSION}
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	marco.broeder@posteo.eu
COMMENT=	Mercurial extension to pull from or push to a Git repository

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}dulwich>=*:devel/dulwich@${FLAVOR} \
		mercurial>=*:devel/mercurial

PORTDOCS=	README.md

NO_ARCH=	yes
WRKSRC=		${WRKDIR}/durin42-${PORTNAME}-6ef27582bfa5
USES=		python:2.7
USE_PYTHON=	distutils autoplist

OPTIONS_DEFINE=	DOCS

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	(cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}/)

.include <bsd.port.mk>
