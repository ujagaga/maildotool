#!/bin/sh

pkgname="maildotool-1.0"
cd "$(dirname "$0")"

# removing any leftovers from previous build
rm -f ./*.deb

# creating necessary folders (in case they do not exist) for building the debian package
mkdir $pkgname/opt
mkdir $pkgname/opt/maildotool

# copy configuration and binary
cp -fr ../maildotool $pkgname/opt/maildotool/
cp -fr ../commands.conf $pkgname/opt/maildotool/
cp -fr ../credentials.conf $pkgname/opt/maildotool/
cp -fr ../README.md $pkgname/opt/maildotool/
cp -fr ../maildotoold $pkgname/opt/maildotool/
cp -fr ../maildotoold-stop $pkgname/opt/maildotool/

# setting up necessary folder permissions
chmod -R 755 $pkgname/DEBIAN/

# building the deb package
dpkg-deb --build ./$pkgname

# renaming the package
mv $pkgname.deb $pkgname-install.deb

