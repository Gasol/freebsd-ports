# Created by: Gasol Wu <gasol.wu@gmail.com>
# $FreeBSD: head/devel/pecl-inotify/Makefile 456296 2017-12-14 13:57:28Z tz $

PORTNAME=	inotify
PORTVERSION=	0.1.6
PORTREVISION=	2
CATEGORIES=	devel

MAINTAINER=	gasol.wu@gmail.com
COMMENT=	This extension allows to use inotify functions in a PHP scripts

LICENSE=	PHP301

LIB_DEPENDS=	libinotify.so:devel/libinotify

USES=		php:pecl
IGNORE_WITH_PHP=	70 71 72

.include <bsd.port.mk>
