# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: head/devel/php-composer/Makefile 467159 2018-04-12 15:39:21Z madpilot $

PORTNAME=	composer
DISTVERSION=	1.6.3
CATEGORIES=	devel
MASTER_SITES=	http://getcomposer.org/download/${DISTVERSION}/
PKGNAMEPREFIX=	${PHP_PKGNAMEPREFIX}
DISTNAME=	composer
EXTRACT_SUFX=	.phar
DIST_SUBDIR=	${PORTNAME}-${PORTVERSION}

MAINTAINER=	cyberbotx@cyberbotx.com
COMMENT=	Dependency Manager for PHP

LICENSE=	MIT

RUN_DEPENDS=	ca_root_nss>0:security/ca_root_nss

NO_ARCH=	yes
NO_BUILD=	yes
NO_WRKSUBDIR=	yes
USES=		php:flavors
USE_PHP=	intl openssl phar json ctype filter mbstring

PLIST_FILES=	bin/composer \
		bin/composer.phar

do-extract:
	${MKDIR} ${WRKSRC}/
	${CP} ${_DISTDIR}/composer.phar ${WRKSRC}/

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/composer.phar ${STAGEDIR}${PREFIX}/bin/
	${LN} -s composer.phar ${STAGEDIR}${PREFIX}/bin/composer

.include <bsd.port.mk>
