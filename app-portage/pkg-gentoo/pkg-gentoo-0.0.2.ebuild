# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
ansi_term-0.11.0
atty-0.2.14
bitflags-1.2.1
clap-2.33.0
glob-0.3.0
hermit-abi-0.1.8
libc-0.2.67
pkg-gentoo-0.0.2
strsim-0.8.0
textwrap-0.11.0
unicode-width-0.1.7
vec_map-0.8.1
winapi-0.3.8
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="An emerge frontend with extra features, written in Rust."
HOMEPAGE="https://github.com/Phate6660/pkg"
SRC_URI="$(cargo_crate_uris ${CRATES})"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="|| ( dev-lang/rust dev-lang/rust-bin )"
RDEPEND="${DEPEND}"

src_compile() {
	cargo_src_compile
}

src_install() {
	cargo_src_install
}
