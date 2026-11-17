PORTNAME=	glances
DISTVERSIONPREFIX=	v
DISTVERSION=	4.5.9
CATEGORIES=	sysutils python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	gasol.wu@gmail.com
COMMENT=	CLI curses based monitoring tool for GNU/Linux and BSD OS
WWW=		https://nicolargo.github.io/glances/

LICENSE=	LGPL3
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}setuptools>=63.1.0:devel/py-setuptools@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}wheel>=0:devel/py-wheel@${PY_FLAVOR}
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}defusedxml>=0:devel/py-defusedxml@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}Jinja2>=0:devel/py-Jinja2@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}packaging>=0:devel/py-packaging@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}psutil>=5.6.7:sysutils/py-psutil@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}shtab>=0:devel/py-shtab@${PY_FLAVOR}

USES=		python
USE_GITHUB=	yes
GH_ACCOUNT=	nicolargo
USE_PYTHON=	autoplist concurrent pep517

NO_ARCH=	yes

PLIST_FILES=	${ETCDIR}/${PORTNAME}.conf.sample

# The ports tree has setuptools 63.1.0. It accepts neither the SPDX string in
# project.license nor the upstream setuptools>=68 requirement. It also keeps
# the capital G of the project name in the wheel name, but Mk/Uses/python.mk
# looks for ${PORTNAME}.
post-patch:
	@${REINPLACE_CMD} -e '/^license = /d' \
		-e 's/^name = "Glances"/name = "${PORTNAME}"/' \
		-e 's/"setuptools>=68"/"setuptools>=63.1.0"/' \
		${WRKSRC}/pyproject.toml

post-install:
	@${MKDIR} ${STAGEDIR}${ETCDIR}
	${INSTALL_DATA} ${WRKSRC}/conf/${PORTNAME}.conf ${STAGEDIR}${ETCDIR}/${PORTNAME}.conf.sample

do-test:
	@(cd ${WRKSRC} && ${PYTHON_CMD} -m unittest -v tests/test_core.py)

.include <bsd.port.mk>
