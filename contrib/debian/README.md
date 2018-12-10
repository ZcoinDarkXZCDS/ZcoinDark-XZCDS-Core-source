
Debian
====================
This directory contains files used to package zcoindarkd/zcoindark-qt
for Debian-based Linux systems. If you compile zcoindarkd/zcoindark-qt yourself, there are some useful files here.

## zcoindark: URI support ##


zcoindark-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install zcoindark-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your zcoindark-qt binary to `/usr/bin`
and the `../../share/pixmaps/zcoindark128.png` to `/usr/share/pixmaps`

zcoindark-qt.protocol (KDE)

