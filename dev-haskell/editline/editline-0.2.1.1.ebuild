# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Bindings to the editline library (libedit)"
HOMEPAGE="http://code.haskell.org/editline"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.4:=
	dev-libs/libedit"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.8.patch

	cabal_chdeps \
		'base < 4.7' 'base'
}
