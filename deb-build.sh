#!/bin/bash
cd $HOME/
rm -rf $HOME/checkinstall-1.6.2 $HOME/checkinstall-1.6.2.tar.gz $HOME/checkinstall-1.6.2.orig.tar.gz $HOME/checkinstall_1.6.2+git20170426.d24a630.orig.tar.xz
rm -rf $HOME/checkinstall-glibc_bug.patch $HOME/checkinstall-destdir.patch
rm -rf $HOME/checkinstall-makefile_cleanup.patch $HOME/checkinstall-no_fortify_source.patch $HOME/checkinstall-translations.patch
rm -rf $HOME/checkinstall-install_paths.patch $HOME/checkinstall-scandir.patch $HOME/installwatch-glibc_minor.patch
rm -rf $HOME/checkinstall-ldflags.diff $HOME/checkinstall-ver.patch $HOME/checkinstall* $HOME/checkinstall
wget https://github.com/amidevous/checkinstall/releases/download/0.0.1/checkinstall_1.6.2+git20170426.d24a630.orig.tar.xz -O $HOME/checkinstall_1.6.2+git20170426.d24a630.orig.tar.xz
tar -xvf $HOME/checkinstall_1.6.2+git20170426.d24a630.orig.tar.xz
cd $HOME/checkinstall/
mkdir -p $HOME/checkinstall/debian/patches/
mkdir -p $HOME/checkinstall/debian/source/
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/0001-Document-changes-applied-in-the-debian-package.patch" -O "$HOME/checkinstall/debian/patches/0001-Document-changes-applied-in-the-debian-package.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/0002-Change-default-configuration.patch" -O "$HOME/checkinstall/debian/patches/0002-Change-default-configuration.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/0003-Change-the-textdomaindir-to-match-debian-installatio.patch" -O "$HOME/checkinstall/debian/patches/0003-Change-the-textdomaindir-to-match-debian-installatio.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/0004-Load-checkinstallrc-from-etc.patch" -O "$HOME/checkinstall/debian/patches/0004-Load-checkinstallrc-from-etc.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/0007-Drop-cases-for-glibc-2.4.patch" -O "$HOME/checkinstall/debian/patches/0007-Drop-cases-for-glibc-2.4.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/0008-Set-file-permissions-to-o-g-instead-of-644.patch" -O "$HOME/checkinstall/debian/patches/0008-Set-file-permissions-to-o-g-instead-of-644.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/0011-fix-crash-when-sizeof-mode_t-sizeof-int.patch" -O "$HOME/checkinstall/debian/patches/0011-fix-crash-when-sizeof-mode_t-sizeof-int.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/0012-add-debian-cflags.patch" -O "$HOME/checkinstall/debian/patches/0012-add-debian-cflags.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/0013-fix-installcheck-tests.patch" -O "$HOME/checkinstall/debian/patches/0013-fix-installcheck-tests.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/0014-fix-xstat64.patch" -O "$HOME/checkinstall/debian/patches/0014-fix-xstat64.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/0015-add-renameat2.patch" -O "$HOME/checkinstall/debian/patches/0015-add-renameat2.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/0016-Define-_STAT_VER-_MKNOD_VER-locally-dropped-in-glibc.patch" -O "$HOME/checkinstall/debian/patches/0016-Define-_STAT_VER-_MKNOD_VER-locally-dropped-in-glibc.patch"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/patches/series" -O "$HOME/checkinstall/debian/patches/series"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/source/format" -O "$HOME/checkinstall/debian/source/format"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/NEWS" -O "$HOME/checkinstall/debian/NEWS"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/changelog" -O "$HOME/checkinstall/debian/changelog"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/changelog.installwatch.old" -O "$HOME/checkinstall/debian/changelog.installwatch.old"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/checkinstall.docs" -O "$HOME/checkinstall/debian/checkinstall.docs"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/checkinstall.install" -O "$HOME/checkinstall/debian/checkinstall.install"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/checkinstall.sgml" -O "$HOME/checkinstall/debian/checkinstall.sgml"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/control" -O "$HOME/checkinstall/debian/control"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/copyright" -O "$HOME/checkinstall/debian/copyright"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/gbp.conf" -O "$HOME/checkinstall/debian/gbp.conf"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/installwatch.sgml" -O "$HOME/checkinstall/debian/installwatch.sgml"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/rules" -O "$HOME/checkinstall/debian/rules"
wget "https://github.com/amidevous/checkinstall/raw/master/debian/watch" -O "$HOME/checkinstall/debian/watch"
debuild
