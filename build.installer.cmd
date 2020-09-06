@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> installer netbeans

if exist installer\ rmdir /Q /S installer
mkdir installer

if exist build\ rmdir /Q /S build
mkdir build

makensis.exe /NOCD "util\netbeans-installer.nsi"

call grigore-stefan.sign "NetBeans" "installer\netbeans-12.0-installer.exe"

if exist build\ rmdir /Q /S build
