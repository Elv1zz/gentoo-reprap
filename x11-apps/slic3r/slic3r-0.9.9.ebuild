# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
# inherit distutils

DESCRIPTION="slic3r - G-code generator for 3D printers"
HOMEPAGE="http://slic3r.org"
SRC_URI="http://dl.slic3r.org/linux/old/slic3r-linux-x86-0-9-9.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

MERGE_TYPE="binary"

src_unpack() {
	mkdir -p ${S}
	cd ${S}
	unpack ${A}
}

src_install() {
	dodir /opt /opt/slic3r
	cp -R ${S}/Slic3r/* "${D}opt/slic3r"
}
