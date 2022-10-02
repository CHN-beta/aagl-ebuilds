# Copyright 2022 Pascal Jager
# Distributed under the terms of the GNU General Public License v3

# Auto-Generated by cargo-ebuild 0.5.2

EAPI=8

# To update the ebuild to a new release of an-anime-game-launcher-gtk:
# 1. Rename this ebuild to the new version
# 2. Go to https://github.com/an-anime-team/an-anime-game-launcher-gtk, open the files of the commit of the version you want to
# build this ebuild for.
# 3. Note the commit number of anime-game-core (the code after anime-game-core @ xxxxxxx), components and blueprint compiler
# 4. Put the commit numbers into the variables below:
anime_game_core_commit=a32856d
blueprint_compiler_commit=6ad1433
components_commit=e1ad703

CRATES="
	adler-1.0.2
	aes-0.7.5
	aho-corasick-0.7.18
	anyhow-1.0.58
	async-trait-0.1.57
	async_once-0.2.6
	autocfg-1.1.0
	base64-0.13.0
	base64ct-1.0.1
	bitflags-1.3.2
	block-buffer-0.10.2
	bumpalo-3.10.0
	byteorder-1.4.3
	bzip2-0.4.3
	bzip2-sys-0.1.11+1.0.8
	cached-0.39.0
	cached_proc_macro-0.15.0
	cached_proc_macro_types-0.1.0
	cairo-rs-0.15.12
	cairo-sys-rs-0.15.1
	cc-1.0.73
	cfg-expr-0.10.3
	cfg-if-1.0.0
	cipher-0.3.0
	constant_time_eq-0.1.5
	core-foundation-sys-0.8.3
	cpufeatures-0.2.2
	crc32fast-1.3.2
	crossbeam-channel-0.5.6
	crossbeam-deque-0.8.2
	crossbeam-epoch-0.9.10
	crossbeam-utils-0.8.10
	crypto-common-0.1.3
	curl-0.4.43
	curl-sys-0.4.55+curl-7.83.1
	darling-0.13.4
	darling_core-0.13.4
	darling_macro-0.13.4
	digest-0.10.3
	dirs-4.0.0
	dirs-sys-0.3.7
	either-1.7.0
	field-offset-0.3.4
	filetime-0.2.16
	flate2-1.0.24
	fnv-1.0.7
	fs_extra-1.2.0
	futures-0.3.24
	futures-channel-0.3.24
	futures-core-0.3.24
	futures-executor-0.3.21
	futures-io-0.3.24
	futures-sink-0.3.24
	futures-task-0.3.24
	futures-util-0.3.24
	gdk-pixbuf-0.15.11
	gdk-pixbuf-sys-0.15.10
	gdk4-0.4.8
	gdk4-sys-0.4.8
	generic-array-0.14.5
	getrandom-0.2.7
	gio-0.15.12
	gio-sys-0.15.10
	glib-0.15.12
	glib-macros-0.15.11
	glib-sys-0.15.10
	gobject-sys-0.15.10
	graphene-rs-0.15.1
	graphene-sys-0.15.10
	gsk4-0.4.8
	gsk4-sys-0.4.8
	gtk4-0.4.8
	gtk4-macros-0.4.8
	gtk4-sys-0.4.8
	hashbrown-0.12.3
	heck-0.4.0
	hermit-abi-0.1.19
	hmac-0.12.1
	ident_case-1.0.1
	instant-0.1.12
	itoa-1.0.2
	jobserver-0.1.24
	js-sys-0.3.58
	kinda-virtual-fs-0.1.1
	lazy_static-1.4.0
	libadwaita-0.1.1
	libadwaita-sys-0.1.0
	libc-0.2.126
	libz-sys-1.1.8
	log-0.4.17
	lzma-sys-0.1.19
	md5-0.7.0
	memchr-2.5.0
	memoffset-0.6.5
	miniz_oxide-0.5.3
	ntapi-0.3.7
	num_cpus-1.13.1
	num_enum-0.5.7
	num_enum_derive-0.5.7
	num_threads-0.1.6
	once_cell-1.12.0
	opaque-debug-0.3.0
	openssl-probe-0.1.5
	openssl-sys-0.9.74
	pango-0.15.10
	pango-sys-0.15.10
	password-hash-0.3.2
	pbkdf2-0.10.1
	pest-2.1.3
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	pkg-config-0.3.25
	proc-macro-crate-1.1.3
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.40
	quick-xml-0.22.0
	quote-1.0.20
	rand_core-0.6.3
	rayon-1.5.3
	rayon-core-1.9.3
	redox_syscall-0.2.13
	redox_users-0.4.3
	regex-1.6.0
	regex-syntax-0.6.27
	ring-0.16.20
	rustc_version-0.3.3
	rustls-0.20.6
	rustls-ffi-0.8.2
	rustls-pemfile-0.2.1
	ryu-1.0.10
	schannel-0.1.20
	scopeguard-1.1.0
	sct-0.7.0
	semver-0.11.0
	semver-parser-0.10.2
	serde-1.0.137
	serde_derive-1.0.137
	serde_json-1.0.81
	sha1-0.10.1
	sha2-0.10.2
	slab-0.4.6
	smallvec-1.8.1
	socket2-0.4.4
	spin-0.5.2
	strsim-0.10.0
	subtle-2.4.1
	syn-1.0.98
	sysinfo-0.26.1
	system-deps-6.0.2
	tar-0.4.38
	thiserror-1.0.31
	thiserror-impl-1.0.31
	time-0.3.11
	time-macros-0.2.4
	tokio-1.20.1
	tokio-macros-1.8.0
	toml-0.5.9
	typenum-1.15.0
	ucd-trie-0.1.3
	unicode-ident-1.0.1
	untrusted-0.7.1
	vcpkg-0.2.15
	version-compare-0.1.0
	version_check-0.9.4
	wait_not_await-0.2.1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.81
	wasm-bindgen-backend-0.2.81
	wasm-bindgen-macro-0.2.81
	wasm-bindgen-macro-support-0.2.81
	wasm-bindgen-shared-0.2.81
	web-sys-0.3.58
	webpki-0.22.0
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.36.1
	windows_aarch64_msvc-0.36.1
	windows_i686_gnu-0.36.1
	windows_i686_msvc-0.36.1
	windows_x86_64_gnu-0.36.1
	windows_x86_64_msvc-0.36.1
	xattr-0.2.3
	xz-0.1.0
	xz2-0.1.7
	zip-0.6.2
	zstd-0.10.2+zstd.1.5.2
	zstd-safe-4.1.6+zstd.1.5.2
	zstd-sys-1.6.3+zstd.1.5.2
"

DEPEND="
	gui-libs/libadwaita:1
	app-arch/xz-utils
	dev-libs/glib:2
	>=gui-libs/gtk-4:4
	app-arch/tar
	app-arch/unzip
	app-arch/cabextract
	dev-vcs/git
	net-misc/iputils
	sys-libs/glibc

	dev-util/xdelta:3[lzma]
	dev-vcs/git
	app-arch/p7zip
	net-fs/samba
"

RDEPEND="${DEPEND}"

BDEPEND="virtual/rust"

inherit cargo git-r3 xdg-utils desktop

DESCRIPTION="Honkers Game launcher with automatic anti-cheat patching, Rust/ Gtk version"
HOMEPAGE="https://github.com/an-anime-team/honkers-launcher-gtk"
SRC_URI="
	https://github.com/an-anime-team/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris)
"
EGIT_REPO_URI_CORE="https://github.com/an-anime-team/anime-game-core"
EGIT_REPO_URI_COMP="https://github.com/an-anime-team/components"
EGIT_REPO_URI_BC="https://gitlab.gnome.org/jwestman/blueprint-compiler"

LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD Boost-1.0 CC0-1.0 GPL-3 ISC MIT Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror"

src_unpack() {
	cargo_src_unpack
	git-r3_fetch $EGIT_REPO_URI_CORE "${anime_game_core_commit}" || die
	git-r3_fetch $EGIT_REPO_URI_COMP "${components_commit}" || die
	git-r3_fetch $EGIT_REPO_URI_BC "${blueprint_compiler_commit}"
	git-r3_checkout $EGIT_REPO_URI_CORE "${WORKDIR}/${P}/anime-game-core" || die
	git-r3_checkout $EGIT_REPO_URI_COMP "${WORKDIR}/${P}/components" || die
	git-r3_checkout $EGIT_REPO_URI_BC "${WORKDIR}/${P}/blueprint-compiler" || die
}

src_install() {
	cargo_src_install
	domenu "${FILESDIR}/honkers-launcher-gtk.desktop"
	newicon assets/images/icon.png honkers-launcher-gtk.png
}

pkg_postinst() {
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
}
