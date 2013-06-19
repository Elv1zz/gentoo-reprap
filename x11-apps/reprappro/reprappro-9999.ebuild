# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-apps/xeyes/xeyes-1.1.1.ebuild,v 1.10 2012/03/07 03:46:12 darkside Exp $

EAPI=4

inherit eutils

DESCRIPTION="Python utilities from RepRapPro for RepRap printers (pronterface,
pronsole, printcore)"
KEYWORDS="~amd64 ~x86"
HOMEPAGE="https://github.com/reprappro/Software"
SRC_URI="https://github.com/reprappro/Software/archive/master.zip"

IUSE="slic3r skeinforge"
REQUIRE_USE="^^ ( slic3r skeinforge )"

RDEPEND="dev-lang/python:2.7[tk]
	>=dev-python/wxpython-2.8.12.1
	>=dev-python/pyserial-2.6-r1
	>=dev-python/pyglet-1.1.4
	app-arch/unzip
	slic3r? ( x11-apps/slic3r )
	skeinforge? ( x11-apps/skeinforge )"
DEPEND="${RDEPEND}"
SLOT=0

MERGE_TYPE="binary"

S="${WORKDIR}/Software-master/"

src_unpack() {
	unpack ${A}
}

src_install() {
	dodir /opt/reprappro
	cp -R ${WORKDIR}/Software-master/* "${D}opt/reprappro" || die "Install failed!"

	if use skeinforge ; then
		dosym ../skeinforge /opt/reprappro/skeinforge || die "Could not link
		skeinforge into reprappro directory!"
	fi
	if use slic3r ; then
		dosym ../slic3r /opt/reprappro/slic3r || die "Could not link slic3r into reprappro directory!"
	fi
}

