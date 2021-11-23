# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7

CRATES="
addr2line-0.17.0
adler-1.0.2
aho-corasick-0.7.18
ansi_term-0.11.0
anyhow-1.0.47
arrayvec-0.5.2
atty-0.2.14
autocfg-1.0.1
backtrace-0.3.63
base32-0.4.0
base64-0.12.3
base64-0.13.0
bindgen-0.57.0
bitflags-1.3.2
block-buffer-0.7.3
block-buffer-0.9.0
block-padding-0.1.5
bumpalo-3.8.0
byte-tools-0.3.1
byteorder-1.4.3
bytes-1.1.0
cc-1.0.72
cexpr-0.4.0
cfg-if-1.0.0
chrono-0.4.19
cidr-0.2.1
clang-sys-1.3.0
clap-2.33.3
cpufeatures-0.2.1
crc32fast-1.2.1
crossbeam-channel-0.5.1
crossbeam-utils-0.8.5
curl-0.4.41
curl-sys-0.4.51+curl-7.80.0
digest-0.8.1
digest-0.9.0
dirs-3.0.2
dirs-next-2.0.0
dirs-sys-0.3.6
dirs-sys-next-0.1.2
either-1.6.1
endian_trait-0.6.0
endian_trait_derive-0.6.0
env_logger-0.7.1
env_logger-0.8.4
error-chain-0.11.0
fake-simd-0.1.2
flate2-1.0.22
fnv-1.0.7
foreign-types-0.3.2
foreign-types-shared-0.1.1
form_urlencoded-1.0.1
fs2-0.4.3
futures-0.3.17
futures-channel-0.3.17
futures-core-0.3.17
futures-executor-0.3.17
futures-io-0.3.17
futures-macro-0.3.17
futures-sink-0.3.17
futures-task-0.3.17
futures-util-0.3.17
generic-array-0.12.4
generic-array-0.14.4
getrandom-0.1.16
getrandom-0.2.3
gimli-0.26.1
glob-0.3.0
h2-0.3.7
half-1.8.2
handlebars-3.5.5
hashbrown-0.11.2
hermit-abi-0.1.19
hex-0.4.3
http-0.2.5
http-body-0.4.4
httparse-1.5.1
httpdate-1.0.2
humantime-1.3.0
humantime-2.1.0
hyper-0.14.15
idna-0.2.3
indexmap-1.7.0
instant-0.1.12
itertools-0.9.0
itoa-0.4.8
jobserver-0.1.24
js-sys-0.3.55
lazy_static-1.4.0
lazycell-1.3.0
lexical-core-0.7.6
libc-0.2.108
libloading-0.7.2
libudev-sys-0.1.4
libz-sys-1.1.3
lock_api-0.4.5
log-0.4.14
maplit-1.0.2
matches-0.1.9
memchr-2.4.1
miniz_oxide-0.4.4
mio-0.7.14
miow-0.3.7
nix-0.19.1
nom-4.2.3
nom-5.1.2
ntapi-0.3.6
num-integer-0.1.44
num-traits-0.2.14
num_cpus-1.13.0
oauth2-4.1.0
object-0.27.1
once_cell-1.8.0
opaque-debug-0.2.3
opaque-debug-0.3.0
openidconnect-2.1.1
openssl-0.10.38
openssl-probe-0.1.4
openssl-sys-0.9.71
ordered-float-1.1.1
pam-0.7.0
pam-sys-0.5.6
parking_lot-0.11.2
parking_lot_core-0.8.5
peeking_take_while-0.1.2
percent-encoding-2.1.0
pest-2.1.3
pest_derive-2.1.0
pest_generator-2.1.3
pest_meta-2.1.3
pin-project-lite-0.2.7
pin-utils-0.1.0
pkg-config-0.3.22
ppv-lite86-0.2.15
proc-macro-hack-0.5.19
proc-macro-nested-0.1.7
proc-macro2-0.2.3
proc-macro2-1.0.32
quick-error-1.2.3
quick-error-2.0.1
quote-0.4.2
quote-1.0.10
rand-0.7.3
rand-0.8.4
rand_chacha-0.2.2
rand_chacha-0.3.1
rand_core-0.5.1
rand_core-0.6.3
rand_hc-0.2.0
rand_hc-0.3.1
redox_syscall-0.2.10
redox_users-0.4.0
regex-1.5.4
regex-syntax-0.6.25
ring-0.16.20
rustc-demangle-0.1.21
rustc-hash-1.1.0
rustyline-7.1.0
ryu-1.0.5
same-file-1.0.6
schannel-0.1.19
scopeguard-1.1.0
serde-1.0.130
serde-value-0.6.0
serde_bytes-0.11.5
serde_cbor-0.11.2
serde_derive-1.0.130
serde_json-1.0.71
serde_path_to_error-0.1.5
serde_plain-1.0.0
sha-1-0.8.2
sha2-0.9.8
shlex-0.1.1
signal-hook-registry-1.4.0
siphasher-0.3.7
slab-0.4.5
smallvec-1.7.0
socket2-0.4.2
spin-0.5.2
static_assertions-1.1.0
strsim-0.8.0
syn-0.12.15
syn-1.0.81
syslog-4.0.1
termcolor-1.1.2
textwrap-0.11.0
thiserror-1.0.30
thiserror-impl-1.0.30
time-0.1.43
tinyvec-1.5.1
tinyvec_macros-0.1.0
tokio-1.14.0
tokio-macros-1.6.0
tokio-openssl-0.6.3
tokio-stream-0.1.8
tokio-util-0.6.9
tower-service-0.3.1
tracing-0.1.29
tracing-core-0.1.21
try-lock-0.2.3
typenum-1.14.0
ucd-trie-0.1.3
udev-0.4.0
unicode-bidi-0.3.7
unicode-normalization-0.1.19
unicode-segmentation-1.8.0
unicode-width-0.1.9
unicode-xid-0.1.0
unicode-xid-0.2.2
untrusted-0.7.1
url-2.2.2
users-0.8.1
utf8parse-0.2.0
vcpkg-0.2.15
vec_map-0.8.2
version_check-0.1.5
version_check-0.9.3
walkdir-2.3.2
want-0.3.0
wasi-0.10.2+wasi-snapshot-preview1
wasi-0.9.0+wasi-snapshot-preview1
wasm-bindgen-0.2.78
wasm-bindgen-backend-0.2.78
wasm-bindgen-macro-0.2.78
wasm-bindgen-macro-support-0.2.78
wasm-bindgen-shared-0.2.78
web-sys-0.3.55
webauthn-rs-0.3.0
which-3.1.1
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
xdg-2.4.0
zstd-0.6.1+zstd.1.4.9
zstd-safe-3.0.1+zstd.1.4.9
zstd-sys-1.4.20+zstd.1.4.9
"

inherit cargo
inherit git-r3

DESCRIPTION="Client for Proxmox Backup Server"
HOMEPAGE="https://www.proxmox.com"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="0BSD AGPL-3 AGPL-3.0-or-later Apache-2.0 Apache-2.0 WITH LLVM-exception BSD-3-Clause BSL-1.0 ISC MIT MPL-2.0 Unlicense Zlib"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND="sys-apps/acl sys-fs/fuse dev-libs/openssl"
RDEPEND="${DEPEND}"
BDEPEND="sys-devel/clang virtual/rust sys-apps/sg3_utils"

PATCHES=(
	"${FILESDIR}/${P}-compile.patch"
)

src_unpack() {
	# version 0.10.1-1
	EGIT_REPO_URI="https://git.proxmox.com/git/pxar.git"
	EGIT_COMMIT="b203d38bcd399f852f898d24403f3d592e5f75f8"
	EGIT_CHECKOUT_DIR=${WORKDIR}/pxar 
	git-r3_src_unpack
	# version 0.1.2-1
	EGIT_REPO_URI="https://git.proxmox.com/git/pathpatterns.git"
	EGIT_COMMIT="916e41c50e75a718ab7b1b95dc770eed9cd7a403"
	EGIT_CHECKOUT_DIR=${WORKDIR}/pathpatterns 
	git-r3_src_unpack
	# version 0.15.3
	EGIT_REPO_URI="https://git.proxmox.com/git/proxmox.git"
	EGIT_COMMIT="c0312f3717bd00ace434929e7d3305b058f4aae9"
	EGIT_CHECKOUT_DIR=${WORKDIR}/proxmox 
	git-r3_src_unpack
	# version 0.1.1-1
	EGIT_REPO_URI="https://git.proxmox.com/git/proxmox-fuse.git"
	EGIT_COMMIT="0e0966af8886c176d8decfe18cb7ead4db5a83a6"
	EGIT_CHECKOUT_DIR=${WORKDIR}/proxmox-fuse 
	git-r3_src_unpack
	# version 0.3.2
	EGIT_REPO_URI="https://git.proxmox.com/git/proxmox-acme-rs.git"
	EGIT_COMMIT="fb547f59352155bdc7a9738237e4df8fa0cda10d"
	EGIT_CHECKOUT_DIR=${WORKDIR}/proxmox-acme-rs 
	git-r3_src_unpack
	EGIT_REPO_URI="https://git.proxmox.com/git/proxmox-apt.git"
	EGIT_COMMIT="c7b17de1b5fec5807921efc9565917c3d6b09417"
	EGIT_CHECKOUT_DIR=${WORKDIR}/proxmox-apt 
	git-r3_src_unpack
	# version 0.9.1
	EGIT_REPO_URI="https://git.proxmox.com/git/proxmox-openid-rs.git"
	EGIT_COMMIT="d6e7e2599f5190d38dfab58426ebd0ce6a55dd1e"
	EGIT_CHECKOUT_DIR=${WORKDIR}/proxmox-openid-rs 
	git-r3_src_unpack
	# version 2.0.12-1
	EGIT_REPO_URI="https://git.proxmox.com/git/proxmox-backup.git"
	EGIT_COMMIT="bd00ff10e46f865d000f3162124009c7d8d13b6b"
	EGIT_CHECKOUT_DIR=${WORKDIR}/${P} 
	git-r3_src_unpack
	cargo_src_unpack
}

src_compile() {
	cargo_src_compile --package pxar-bin --bin pxar --package proxmox-backup-client --bin proxmox-backup-client
}

src_test() {
	cargo_src_test --package pxar-bin --bin pxar --package proxmox-backup-client --bin proxmox-backup-client
}

src_install() {
	debian/scripts/elf-strip-unused-dependencies.sh target/release/proxmox-backup-client
	debian/scripts/elf-strip-unused-dependencies.sh target/release/pxar

	dobin target/release/pxar
	dobin target/release/proxmox-backup-client

	insinto /usr/share/bash-completion/completions/
	newins debian/proxmox-backup-client.bc proxmox-backup-client
	newins debian/pxar.bc pxar
}
