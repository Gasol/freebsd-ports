# $FreeBSD: head/devel/php72-intl/Makefile 553940 2020-11-03 00:56:26Z jbeich $

PORTREVISION=	1
CATEGORIES=	devel

MASTERDIR=	${.CURDIR}/../../lang/php72

PKGNAMESUFFIX=	-intl

USES=		compiler:c++11-lib
USE_CXXSTD=	gnu++11

CPPFLAGS+=	-DU_USING_ICU_NAMESPACE=1

TEST_TARGET=    test

.include "${MASTERDIR}/Makefile"
