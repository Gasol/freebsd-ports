# Created by: Gasol Wu <gasol.wu@gmail.com>
# $FreeBSD$

PORTNAME=	Form
PORTVERSION=	${SYMFONY2_PORTVERSION}
CATEGORIES=	devel pear
PKGNAMEPREFIX=	pear-Symfony_Component_

MAINTAINER=	gasol.wu@gmail.com
COMMENT=	Symfony2 Form Component

LICENSE=	MIT

USE_SYMFONY2_RUN=	Symfony_Component_EventDispatcher \
			Symfony_Component_Validator \
			Symfony_Component_Locale

IGNORE_WITH_PHP=52

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear-channel-symfony2/bsd.symfony2.mk"
.include <bsd.port.post.mk>
