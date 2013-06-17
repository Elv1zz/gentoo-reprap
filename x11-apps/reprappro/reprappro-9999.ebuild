# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-apps/xeyes/xeyes-1.1.1.ebuild,v 1.10 2012/03/07 03:46:12 darkside Exp $

EAPI=3

inherit eutils

DESCRIPTION="Python utilities from RepRapPro for RepRap printers (pronterface,
pronsole, printcore)"
KEYWORDS="~amd64 ~x86"
HOMEPAGE="https://github.com/reprappro/Software"
SRC_URI="https://github.com/reprappro/Software/archive/master.zip"

IUSE=""
RDEPEND=">=dev-python/wxpython-2.8.12.1
	>=dev-python/pyserial-2.6-r1
	>=dev-python/pyglet-1.1.4"
DEPEND="${RDEPEND}"
SLOT=0

src_unpack() {
	unpack ${A}
}

src_install() {
	mkdir -p ${D}opt/reprappro
	cp -R ${WORKDIR}/Software-master/* "${D}opt/reprappro" || die "Install failed!"
}

