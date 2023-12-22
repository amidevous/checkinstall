#!/bin/bash
SOURCES=$(rpm --eval '%{_sourcedir}')
SPECS=$(rpm --eval '%{_specdir}')
mkdir -p $SOURCES/
mkdir -p $SPECS/
wget "https://github.com/amidevous/checkinstall/releases/download/0.0.1/checkinstall-1.6.2.tar.gz" -O "$SOURCES/checkinstall-1.6.2.tar.gz"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstall.in" -O "$SOURCES/checkinstall.in"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstallrc-dist.in" -O "$SOURCES/checkinstallrc-dist.in"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstall-1.6.1.zh_TW.po" -O "$SOURCES/checkinstall-1.6.1.zh_TW.po"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstall-glibc_bug.patch" -O "$SOURCES/checkinstall-glibc_bug.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstall-destdir.patch" -O "$SOURCES/checkinstall-destdir.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstall-makefile_cleanup.patch" -O "$SOURCES/checkinstall-makefile_cleanup.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstall-no_fortify_source.patch" -O "$SOURCES/checkinstall-no_fortify_source.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstall-translations.patch" -O "$SOURCES/checkinstall-translations.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstall-install_paths.patch" -O "$SOURCES/checkinstall-install_paths.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstall-scandir.patch" -O "$SOURCES/checkinstall-scandir.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/installwatch-glibc_minor.patch" -O "$SOURCES/installwatch-glibc_minor.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstall-ldflags.diff" -O "$SOURCES/checkinstall-ldflags.diff"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstall-ver.patch" -O "$SOURCES/checkinstall-ver.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/checkinstall.spec" -O "$SPECS/checkinstall.spec"
rpmbuild -ba "$SPECS/checkinstall.spec"
