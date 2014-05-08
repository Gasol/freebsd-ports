# Created by: Denise H. G. <darcsis@gmail.com>
# $FreeBSD: head/devel/tig/Makefile 339427 2014-01-11 15:04:03Z amdmi3 $

PORTNAME=	tig
PORTVERSION=	2.0.1
CATEGORIES=	devel
MASTER_SITES=	http://jonas.nitro.dk/tig/releases/

MAINTAINER=	darcsis@gmail.com
COMMENT=	Text-mode interface for git

LICENSE=	GPLv2

LIB_DEPENDS=	libreadline.so:${PORTSDIR}/devel/readline
RUN_DEPENDS=	git:${PORTSDIR}/devel/git

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	${ICONV_CONFIGURE_BASE}
USES=		iconv gmake

PLIST_FILES=	bin/tig etc/tigrc

OPTIONS_DEFINE=	MANPAGES
OPTIONS_DEFAULT=MANPAGES

MANPAGES_BUILD_DEPENDS=	asciidoc:${PORTSDIR}/textproc/asciidoc \
			xmlto:${PORTSDIR}/textproc/xmlto
MANPAGES_ALL_TARGET=	all doc-man
MANPAGES_INSTALL_TARGET=install install-doc-man
MANPAGES_PLIST_FILES=	man/man1/tig.1.gz \
			man/man5/tigrc.5.gz \
			man/man7/tigmanual.7.gz

.include <bsd.port.mk>