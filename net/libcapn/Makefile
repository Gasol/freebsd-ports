# Created by: Gasol Wu <gasol.wu@gmail.com>
# $FreeBSD: head/net/libcapn/Makefile 412348 2016-04-01 14:17:44Z mat $

PORTNAME=	libcapn
PORTVERSION=	1.1.0
CATEGORIES=	net

MAINTAINER=	gasol.wu@gmail.com
COMMENT=	C Library to interact with Apple Push Notification Service

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libjansson.so:devel/jansson

USE_GITHUB=	yes
GH_ACCOUNT=	adobkin

USES=		cmake
USE_LDCONFIG=	yes
CMAKE_ARGS=	-DOS_FREEBSD=yes \
		-DCAPN_INSTALL_PATH_PKGCONFIG=${PREFIX}/libdata/pkgconfig

.include <bsd.port.mk>
