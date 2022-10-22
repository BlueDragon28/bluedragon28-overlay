EAPI=8

inherit 
DESCRIPTION="Java IDE by JetBrains"
HOMEPAGE="https://www.jetbrains.com/idea/"
SRC_URI="https://download-cdn.jetbrains.com/idea/ideaIC-${PV}.tar.gz"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
LICENSE="Apache-2.0"

RDEPEND=""
DEPEND="${RDEPEND}"

IDEA_BUILD_VERSION="222.4345.14"

src_unpack() {
  unpack "ideaIC-${PV}.tar.gz"
  mv "${WORKDIR}/idea-IC-${IDEA_BUILD_VERSION}/" "${WORKDIR}/${PN}-${PV}/"
}

src_prepare() {
  eapply_user
  true
}

src_configure() {
  true
}

src_compile() {
  true
}

src_install() {
  install -dm 755 "${D}/opt/intellij_idea_community/" || die
  cp -dr --no-preserve="ownership" ${WORKDIR}/${PN}-${PV}/{bin,build.txt,Install-Linux-tar.txt,jbr,lib,license,LICENSE.txt,NOTICE.txt,plugins,product-info.json} "${D}/opt/intellij_idea_community/" || die
  install -dm 755 "${D}/usr/bin"
  install -dm 755 "${D}/usr/share/applications"
  install -pm 755 "${FILESDIR}/ideaIC" "${D}/usr/bin"
  install -pm 644 "${FILESDIR}/intellij_idea_community.desktop" "${D}/usr/share/applications"
}

