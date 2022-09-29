EAPI=8

CRATES="
	aes-0.6.0
	aes-ctr-0.6.0
	aes-soft-0.6.4
	aesni-0.10.0
	aho-corasick-0.7.18
	alsa-0.5.0
	alsa-0.6.0
	alsa-sys-0.3.1
	anyhow-1.0.53
	async-broadcast-0.3.4
	async-channel-1.6.1
	async-executor-1.4.1
	async-global-executor-2.0.2
	async-io-1.6.0
	async-lock-2.4.0
	async-mutex-1.4.0
	async-recursion-0.3.2
	async-std-1.10.0
	async-task-4.1.0
	async-trait-0.1.52
	atomic-waker-1.0.0
	atty-0.2.14
	autocfg-1.1.0
	base64-0.13.0
	bindgen-0.56.0
	bitflags-1.3.2
	block-0.1.6
	block-buffer-0.9.0
	block-modes-0.7.0
	block-padding-0.2.1
	blocking-1.1.0
	bumpalo-3.9.1
	byteorder-1.4.3
	bytes-1.1.0
	cache-padded-1.2.0
	cairo-rs-0.15.1
	cairo-sys-rs-0.15.1
	castaway-0.1.2
	cc-1.0.72
	cesu8-1.1.0
	cexpr-0.4.0
	cfg-expr-0.9.1
	cfg-if-0.1.10
	cfg-if-1.0.0
	chrono-0.4.19
	cipher-0.2.5
	clang-sys-1.3.1
	combine-4.6.3
	concurrent-queue-1.2.2
	core-foundation-sys-0.8.3
	coreaudio-rs-0.10.0
	coreaudio-sys-0.2.9
	cpal-0.13.5
	cpufeatures-0.2.1
	crossbeam-utils-0.8.7
	crypto-mac-0.10.1
	crypto-mac-0.11.1
	ctor-0.1.21
	ctr-0.6.0
	curl-0.4.42
	curl-sys-0.4.52+curl-7.81.0
	darling-0.13.1
	darling_core-0.13.1
	darling_macro-0.13.1
	derivative-2.2.0
	digest-0.9.0
	easy-parallel-3.2.0
	encoding_rs-0.8.30
	enumflags2-0.6.4
	enumflags2-0.7.3
	enumflags2_derive-0.6.4
	enumflags2_derive-0.7.3
	env_logger-0.8.4
	env_logger-0.9.0
	event-listener-2.5.2
	fastrand-1.7.0
	field-offset-0.3.4
	fnv-1.0.7
	form_urlencoded-1.0.1
	futures-0.3.21
	futures-channel-0.3.21
	futures-core-0.3.21
	futures-executor-0.3.21
	futures-io-0.3.21
	futures-lite-1.12.0
	futures-macro-0.3.21
	futures-sink-0.3.21
	futures-task-0.3.21
	futures-util-0.3.21
	gdk-pixbuf-0.15.6
	gdk-pixbuf-sys-0.15.1
	gdk4-0.4.6
	gdk4-sys-0.4.2
	generic-array-0.14.5
	getopts-0.2.21
	getrandom-0.2.4
	gettext-rs-0.7.0
	gettext-sys-0.21.2
	gio-0.15.7
	gio-sys-0.15.5
	glib-0.15.9
	glib-macros-0.15.3
	glib-sys-0.15.5
	glob-0.3.0
	gloo-timers-0.2.3
	gobject-sys-0.15.5
	graphene-rs-0.15.1
	graphene-sys-0.15.1
	gsk4-0.4.6
	gsk4-sys-0.4.2
	gtk4-0.4.6
	gtk4-macros-0.4.3
	gtk4-sys-0.4.5
	hashbrown-0.11.2
	headers-0.3.6
	headers-core-0.2.0
	heck-0.4.0
	hermit-abi-0.1.19
	hex-0.4.3
	hkdf-0.10.0
	hmac-0.10.1
	hmac-0.11.0
	hostname-0.3.1
	http-0.2.6
	http-body-0.4.4
	httparse-1.5.1
	httpdate-1.0.2
	humantime-2.1.0
	hyper-0.14.16
	hyper-proxy-0.9.1
	ident_case-1.0.1
	idna-0.2.3
	if-addrs-0.6.7
	if-addrs-sys-0.3.2
	indexmap-1.8.0
	instant-0.1.12
	isahc-1.7.0
	itoa-0.4.8
	itoa-1.0.1
	jni-0.19.0
	jni-sys-0.3.0
	jobserver-0.1.24
	js-sys-0.3.56
	kv-log-macro-1.0.7
	lazy_static-1.4.0
	lazycell-1.3.0
	lewton-0.10.2
	libadwaita-0.1.0
	libadwaita-sys-0.1.0
	libc-0.2.117
	libloading-0.7.3
	libm-0.2.2
	libmdns-0.6.2
	libnghttp2-sys-0.1.7+1.45.0
	libpulse-binding-2.26.0
	libpulse-simple-binding-2.25.0
	libpulse-simple-sys-1.19.2
	libpulse-sys-1.19.3
	librespot-0.3.1
	librespot-audio-0.3.1
	librespot-connect-0.3.1
	librespot-core-0.3.1
	librespot-discovery-0.3.1
	librespot-metadata-0.3.1
	librespot-playback-0.3.1
	librespot-protocol-0.3.1
	libz-sys-1.1.3
	locale_config-0.3.0
	lock_api-0.4.6
	log-0.4.14
	mach-0.3.2
	malloc_buf-0.0.6
	match_cfg-0.1.0
	matches-0.1.9
	memchr-2.4.1
	memoffset-0.6.5
	mime-0.3.16
	mio-0.8.0
	miow-0.3.7
	multimap-0.8.3
	nb-connect-1.2.0
	ndk-0.6.0
	ndk-glue-0.6.0
	ndk-macro-0.3.0
	ndk-sys-0.3.0
	nix-0.17.0
	nix-0.20.0
	nix-0.23.1
	nom-5.1.2
	ntapi-0.3.6
	num-0.3.1
	num-bigint-0.3.3
	num-bigint-0.4.3
	num-complex-0.3.1
	num-derive-0.3.3
	num-integer-0.1.44
	num-iter-0.1.42
	num-rational-0.3.2
	num-traits-0.2.14
	num_cpus-1.13.1
	num_enum-0.5.6
	num_enum_derive-0.5.6
	objc-0.2.7
	objc-foundation-0.1.1
	objc_id-0.1.1
	oboe-0.4.5
	oboe-sys-0.4.5
	ogg-0.8.0
	once_cell-1.9.0
	opaque-debug-0.3.0
	openssl-probe-0.1.5
	openssl-sys-0.9.72
	ordered-stream-0.0.1
	pango-0.15.2
	pango-sys-0.15.1
	parking-2.0.0
	parking_lot-0.11.2
	parking_lot_core-0.8.5
	pbkdf2-0.8.0
	peeking_take_while-0.1.2
	percent-encoding-2.1.0
	pest-2.1.3
	pin-project-1.0.10
	pin-project-internal-1.0.10
	pin-project-lite-0.2.8
	pin-utils-0.1.0
	pkg-config-0.3.24
	polling-2.2.0
	ppv-lite86-0.2.16
	priority-queue-1.2.1
	proc-macro-crate-0.1.5
	proc-macro-crate-1.1.0
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.36
	protobuf-2.27.1
	protobuf-codegen-2.27.1
	protobuf-codegen-pure-2.27.1
	quote-1.0.15
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.3
	rand_distr-0.4.3
	redox_syscall-0.2.10
	ref_filter_map-1.0.1
	regex-1.5.5
	regex-syntax-0.6.25
	remove_dir_all-0.5.3
	rodio-0.14.0
	rpassword-5.0.1
	rustc-hash-1.1.0
	rustc_version-0.3.3
	rustc_version-0.4.0
	ryu-1.0.9
	same-file-1.0.6
	schannel-0.1.19
	scoped-tls-1.0.0
	scopeguard-1.1.0
	secret-service-2.0.1
	semver-0.11.0
	semver-1.0.5
	semver-parser-0.10.2
	serde-1.0.136
	serde_derive-1.0.136
	serde_json-1.0.79
	serde_repr-0.1.7
	sha-1-0.9.8
	sha1-0.6.1
	sha1_smol-1.0.0
	sha2-0.9.9
	shannon-0.2.0
	shell-words-1.1.0
	shlex-0.1.1
	signal-hook-registry-1.4.0
	slab-0.4.5
	sluice-0.5.5
	smallvec-1.8.0
	socket2-0.4.4
	static_assertions-1.1.0
	stdweb-0.1.3
	strsim-0.10.0
	subtle-2.4.1
	syn-1.0.86
	synstructure-0.12.6
	system-deps-6.0.1
	temp-dir-0.1.11
	tempfile-3.3.0
	termcolor-1.1.2
	thiserror-1.0.30
	thiserror-impl-1.0.30
	time-0.1.43
	tinyvec-1.5.1
	tinyvec_macros-0.1.0
	tokio-1.17.0
	tokio-macros-1.7.0
	tokio-stream-0.1.8
	tokio-util-0.6.9
	toml-0.5.8
	tower-service-0.3.1
	tracing-0.1.30
	tracing-attributes-0.1.19
	tracing-core-0.1.22
	tracing-futures-0.2.5
	try-lock-0.2.3
	typenum-1.15.0
	ucd-trie-0.1.3
	unicode-bidi-0.3.7
	unicode-normalization-0.1.19
	unicode-width-0.1.9
	unicode-xid-0.2.2
	url-2.2.2
	uuid-0.8.2
	value-bag-1.0.0-alpha.8
	vcpkg-0.2.15
	vergen-3.2.0
	version-compare-0.1.0
	version_check-0.9.4
	void-1.0.2
	waker-fn-1.1.0
	walkdir-2.3.2
	want-0.3.0
	wasi-0.10.2+wasi-snapshot-preview1
	wasm-bindgen-0.2.79
	wasm-bindgen-backend-0.2.79
	wasm-bindgen-futures-0.4.29
	wasm-bindgen-macro-0.2.79
	wasm-bindgen-macro-support-0.2.79
	wasm-bindgen-shared-0.2.79
	web-sys-0.3.56
	wepoll-ffi-0.1.2
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	zbus-1.9.1
	zbus-2.1.1
	zbus_macros-1.9.1
	zbus_macros-2.1.1
	zbus_names-2.1.0
	zerocopy-0.3.0
	zerocopy-derive-0.2.0
	zvariant-2.10.0
	zvariant-3.1.2
	zvariant_derive-2.10.0
	zvariant_derive-3.1.2
"

inherit cargo meson ninja-utils
DESCRIPTION="Native Spotify client for the GNOME desktop "
HOMEPAGE="https://github.com/xou816/spot"
SRC_URI="$(cargo_crate_uris) https://github.com/xou816/spot/archive/refs/tags/${PV}.tar.gz"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
LICENSE="MIT"


# Run-time dependencies. Must be defined to whatever this depends on to run.
# Example:
#    ssl? ( >=dev-libs/openssl-1.0.2q:0= )
#    >=dev-lang/perl-5.24.3-r1
# It is advisable to use the >= syntax show above, to reflect what you
# had installed on your system when you tested the package.  Then
# other users hopefully won't be caught without the right version of
# a dependency.
RDEPEND=">=dev-lang/rust-1.62.1 >=gui-libs/gtk-4.6.7 >=gui-libs/libadwaita-1.1.3"

# Build-time dependencies that need to be binary compatible with the system
# being built (CHOST). These include libraries that we link against.
# The below is valid if the same run-time depends are required to compile.
DEPEND="${RDEPEND}"

# Build-time dependencies that are executed during the emerge process, and
# only need to be present in the native build system (CBUILD). Example:
#BDEPEND="virtual/pkgconfig"


# The following src_configure function is implemented as default by portage, so
# you only need to call it if you need a different behaviour.
#src_configure() {
	# Most open-source packages use GNU autoconf for configuration.
	# The default, quickest (and preferred) way of running configure is:
	#econf
	#
	# You could use something similar to the following lines to
	# configure your package before compilation.  The "|| die" portion
	# at the end will stop the build process if the command fails.
	# You should use this at the end of critical commands in the build
	# process.  (Hint: Most commands are critical, that is, the build
	# process should abort if they aren't successful.)
	#./configure \
	#	--host=${CHOST} \
	#	--prefix=/usr \
	#	--infodir=/usr/share/info \
	#	--mandir=/usr/share/man || die
	# Note the use of --infodir and --mandir, above. This is to make
	# this package FHS 2.2-compliant.  For more information, see
	#   https://wiki.linuxfoundation.org/lsb/fhs
#}

src_configure() {
  cd "${WORKDIR}/spot-${PV}"
  
  local installPrefix="/usr"
  
  meson \
    target \
    -Dbuildtype=release \
    -Doffline=false \
    --prefix="${installPrefix}" \
    --libdir="${installPrefix}/$(get_libdir)" \
    --infodir=${installPrefix}/share/info \
    --mandir=${installPrefix}/share/man || die
}

# The following src_compile function is implemented as default by portage, so
# you only need to call it, if you need different behaviour.
#src_compile() {
	# emake is a script that calls the standard GNU make with parallel
	# building options for speedier builds (especially on SMP systems).
	# Try emake first.  It might not work for some packages, because
	# some makefiles have bugs related to parallelism, in these cases,
	# use emake -j1 to limit make to a single process.  The -j1 is a
	# visual clue to others that the makefiles have bugs that have been
	# worked around.

	#emake
#}

src_compile() {
  eninja -C target || die
}

# The following src_install function is implemented as default by portage, so
# you only need to call it, if you need different behaviour.
#src_install() {
	# You must *personally verify* that this trick doesn't install
	# anything outside of DESTDIR; do this by reading and
	# understanding the install part of the Makefiles.
	# This is the preferred way to install.
	#emake DESTDIR="${D}" install

	# When you hit a failure with emake, do not just use make. It is
	# better to fix the Makefiles to allow proper parallelization.
	# If you fail with that, use "emake -j1", it's still better than make.

	# For Makefiles that don't make proper use of DESTDIR, setting
	# prefix is often an alternative.  However if you do this, then
	# you also need to specify mandir and infodir, since they were
	# passed to ./configure as absolute paths (overriding the prefix
	# setting).
	#emake \
	#	prefix="${D}"/usr \
	#	mandir="${D}"/usr/share/man \
	#	infodir="${D}"/usr/share/info \
	#	libdir="${D}"/usr/$(get_libdir) \
	#	install
	# Again, verify the Makefiles!  We don't want anything falling
	# outside of ${D}.
#}

src_install() {
  DESTDIR="${D}" eninja install -C target || die
  
  install -d "${D}/usr/share/gnome/glib-2.0/schemas/"
  install -p -m 644 "${FILESDIR}/gschemas.compiled" "${D}/usr/share/gnome/glib-2.0/schemas/"
}  
#}