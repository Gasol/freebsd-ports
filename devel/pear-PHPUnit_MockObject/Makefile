# Created by: Gasol Wu <gasol.wu@gmail.com>
# $FreeBSD: head/devel/pear-PHPUnit_MockObject/Makefile 463917 2018-03-08 19:48:41Z mat $

PORTNAME=	PHPUnit_MockObject
PORTVERSION=	4.0.1
CATEGORIES=	devel pear

MAINTAINER=	joneum@FreeBSD.org
COMMENT=	Mock Object library for PHPUnit

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

USE_GITHUB=	yes
GH_ACCOUNT=	sebastianbergmann
GH_PROJECT=	phpunit-mock-objects

NO_BUILD=	yes

PHP_DIR=	share/PHP

PLIST_FILES=	${PHP_DIR}/${PORTNAME}/MockObject.php

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/${PHP_DIR}/${PORTNAME}
	${INSTALL_SCRIPT} ${WRKSRC}/src/MockObject.php \
		${STAGEDIR}${PREFIX}/${PHP_DIR}/${PORTNAME}

.include <bsd.port.mk>
