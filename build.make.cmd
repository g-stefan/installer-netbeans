@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> make netbeans

if exist build\ rmdir /Q /S build
if exist release\ rmdir /Q /S release

mkdir build

7z x "vendor/netbeans-12.0-bin.zip" -aoa -obuild
move /Y "build\netbeans" "release"
if exist build\ rmdir /Q /S build
