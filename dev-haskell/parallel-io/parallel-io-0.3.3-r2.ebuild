# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Combinators for executing IO actions in parallel on a thread pool"
HOMEPAGE="http://batterseapower.github.com/parallel-io"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""
#hackport: flags: -test -fuzz -benchmark

RDEPEND=">dev-haskell/extensible-exceptions-0.1.0.1:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2
"

src_prepare() {
	cabal_chdeps \
		'random >= 1.0 && < 1.1' 'random >= 1.0 && < 1.2'
}
