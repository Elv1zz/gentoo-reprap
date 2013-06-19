# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
# inherit distutils

DESCRIPTION="Skeinforge from ReplicatorG"
HOMEPAGE="http://replicat.org"
SRC_URI="http://fabmetheus.crsndoo.com/files/${PV}_reprap_python_beanshell.zip"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-lang/python:2.7
	app-arch/unzip"
RDEPEND="${DEPEND}"

MERGE_TYPE="binary"

src_unpack() {
	mkdir -p ${S}
	cd ${S}
	unpack ${A}
}

src_install() {
	dodir /opt /opt/skeinforge 
	cp -R ${S}/* "${D}opt/skeinforge/"
}
