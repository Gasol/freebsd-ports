# Created by: Gasol Wu <gasol.wu@gmail.com>
# $FreeBSD: head/devel/pear-TheSeer_DirectoryScanner/Makefile 463917 2018-03-08 19:48:41Z mat $

PORTNAME=	DirectoryScanner
PORTVERSION=	1.3.2
CATEGORIES=	devel pear
PKGNAMEPREFIX=	${PEAR_PKGNAMEPREFIX}TheSeer_

MAINTAINER=	joneum@FreeBSD.org
COMMENT=	Recursive directory scanner and filter

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=	php:flavors pear:env
USE_GITHUB=	yes
GH_ACCOUNT=	theseer
GH_PROJECT=	DirectoryScanner

USE_PHP=	fileinfo
PEAR_CHANNEL=	theseer
PEAR_CHANNEL_VER=	>=20120501

NO_BUILD=	yes

PHP_DIR=	share/PHP

PLIST_FILES=	${PHP_DIR}/${PORTNAME}/directoryscanner.php

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/${PHP_DIR}/${PORTNAME}
	${INSTALL_SCRIPT} ${WRKSRC}/src/directoryscanner.php \
		${STAGEDIR}${PREFIX}/${PHP_DIR}/${PORTNAME}

.include <bsd.port.mk>
