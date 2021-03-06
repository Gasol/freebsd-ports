# Created by: Gasol Wu <gasol.wu@gmail.com>
# $FreeBSD: head/devel/php-memoize/Makefile 463917 2018-03-08 19:48:41Z mat $

PORTNAME=	memoize
PORTVERSION=	0.2.0b1
DISTVERSIONPREFIX=	v
PORTREVISION=	3
CATEGORIES=	devel
PKGNAMEPREFIX=	${PHP_PKGNAMEPREFIX}

MAINTAINER=	gasol.wu@gmail.com
COMMENT=	PHP extension which transparently caches PHP functions

USE_GITHUB=	yes
GH_ACCOUNT=	arraypad
GH_PROJECT=	php-${PORTNAME}

USES=		php:ext
IGNORE_WITH_PHP=	70 71 72
CONFIGURE_ARGS=	--enable-memoize

OPTIONS_DEFINE=	MEMCACHED MEMORY
OPTIONS_DEFAULT=	MEMORY
MEMCACHED_DESC=	Enable memcached storage module
MEMORY_DESC=	Enable the memoize memory storage module

MEMCACHED_CONFIGURE_WITH=	memoize-memcached
MEMCACHED_BUILD_DEPENDS=		libmemcached>0:databases/libmemcached
MEMCACHED_RUN_DEPENDS=		libmemcached>0:databases/libmemcached

MEMORY_CONFIGURE_OFF=	--disable-memoize-memory

.include <bsd.port.mk>
