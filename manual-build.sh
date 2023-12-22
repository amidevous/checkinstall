#!/bin/bash
cd $HOME/
rm -rf $HOME/checkinstall-1.6.2 $HOME/checkinstall-1.6.2.tar.gz $HOME/checkinstall-glibc_bug.patch $HOME/checkinstall-destdir.patch
rm -rf $HOME/checkinstall-makefile_cleanup.patch $HOME/checkinstall-no_fortify_source.patch $HOME/checkinstall-translations.patch
rm -rf $HOME/checkinstall-install_paths.patch $HOME/checkinstall-scandir.patch $HOME/installwatch-glibc_minor.patch
rm -rf $HOME/checkinstall-ldflags.diff $HOME/checkinstall-ver.patch
wget https://github.com/amidevous/checkinstall/releases/download/0.0.1/checkinstall-1.6.2.tar.gz -O $HOME/checkinstall-1.6.2.tar.gz
tar -xvf $HOME/checkinstall-1.6.2.tar.gz
wget https://github.com/amidevous/checkinstall/raw/master/checkinstall-glibc_bug.patch -O $HOME/checkinstall-glibc_bug.patch
wget https://github.com/amidevous/checkinstall/raw/master/checkinstall-destdir.patch -O $HOME/checkinstall-destdir.patch
wget https://github.com/amidevous/checkinstall/raw/master/checkinstall-makefile_cleanup.patch -O $HOME/checkinstall-makefile_cleanup.patch
wget https://github.com/amidevous/checkinstall/raw/master/checkinstall-no_fortify_source.patch -O $HOME/checkinstall-no_fortify_source.patch
wget https://github.com/amidevous/checkinstall/raw/master/checkinstall-translations.patch -O $HOME/checkinstall-translations.patch
wget https://github.com/amidevous/checkinstall/raw/master/checkinstall-install_paths.patch -O $HOME/checkinstall-install_paths.patch
wget https://github.com/amidevous/checkinstall/raw/master/checkinstall-scandir.patch -O $HOME/checkinstall-scandir.patch
wget https://github.com/amidevous/checkinstall/raw/master/installwatch-glibc_minor.patch -O $HOME/installwatch-glibc_minor.patch
wget https://github.com/amidevous/checkinstall/raw/master/checkinstall-ldflags.diff -O $HOME/checkinstall-ldflags.diff
wget https://github.com/amidevous/checkinstall/raw/master/checkinstall-ver.patch -O $HOME/checkinstall-ver.patch
cd $HOME/checkinstall-1.6.2/
patch -p0 <  $HOME/checkinstall-glibc_bug.patch
patch -p0 <  $HOME/checkinstall-destdir.patch
patch -p0 <  $HOME/checkinstall-makefile_cleanup.patch
patch -p0 <  $HOME/checkinstall-no_fortify_source.patch
patch -p0 <  $HOME/checkinstall-translations.patch
patch -p0 <  $HOME/checkinstall-install_paths.patch
patch -p0 <  $HOME/checkinstall-scandir.patch
patch -p0 <  $HOME/installwatch-glibc_minor.patch
patch -p1 <  $HOME/checkinstall-ldflags.diff
patch -p1 <  $HOME/checkinstall-ver.patch
wget https://github.com/amidevous/checkinstall/raw/master/checkinstall.in -O $HOME/checkinstall-1.6.2/checkinstall.in
wget https://github.com/amidevous/checkinstall/raw/master/checkinstallrc-dist.in -O $HOME/checkinstall-1.6.2/checkinstallrc-dist.in
wget https://github.com/amidevous/checkinstall/raw/master/checkinstall-1.6.1.zh_TW.po -O $HOME/checkinstall-1.6.2/locale/checkinstall-zh_TW.po
rm -f checkinstall checkinstallrc-dist
rename no.po nb.po locale/*.po
sed -i '33s|&&|;|' Makefile
make
ARCH=$(uname -m)
if [[ $ARCH == "x86_64" ]]
then
sudo make PREFIX=/usr LIBDIR=/usr/lib64 install
else
sudo make PREFIX=/usr LIBDIR=/usr/lib install
fi
cd $HOME/
rm -rf $HOME/checkinstall-1.6.2 $HOME/checkinstall-1.6.2.tar.gz $HOME/checkinstall-glibc_bug.patch $HOME/checkinstall-destdir.patch
rm -rf $HOME/checkinstall-makefile_cleanup.patch $HOME/checkinstall-no_fortify_source.patch $HOME/checkinstall-translations.patch
rm -rf $HOME/checkinstall-install_paths.patch $HOME/checkinstall-scandir.patch $HOME/installwatch-glibc_minor.patch
rm -rf $HOME/checkinstall-ldflags.diff $HOME/checkinstall-ver.patch
