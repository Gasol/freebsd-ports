# $FreeBSD: head/sysutils/phpfpm_exporter/Makefile 462476 2018-02-21 07:49:21Z lwhsu $

PORTNAME=	phpfpm_exporter
PORTVERSION=	0.4.1
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	gasol.wu@gmail.com
COMMENT=	Export php-fpm metrics in Prometheus format

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go
USE_GITHUB=	yes
GH_ACCOUNT=	bakins
GH_PROJECT=	php-fpm-exporter

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
PLIST_FILES=	bin/${PORTNAME}
USE_RC_SUBR=	phpfpm_exporter
USERS=		prometheus
GROUPS=		prometheus

do-build:
	@(cd ${GO_WRKSRC}; ${SETENV} ${MAKE_ENV} ${GO_ENV} CGO_ENABLED=0 ${GO_CMD} build -o ${PORTNAME} ./cmd/${GH_PROJECT})

do-install:
	${INSTALL_PROGRAM} ${GO_WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
