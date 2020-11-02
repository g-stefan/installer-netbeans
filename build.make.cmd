@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

call build.config.cmd

echo -^> make %PRODUCT_NAME%

if exist build\ rmdir /Q /S build
if exist release\ rmdir /Q /S release

mkdir build

7z x "vendor/netbeans-%PRODUCT_VERSION%-bin.zip" -aoa -obuild
move /Y "build\netbeans" "release"
if exist build\ rmdir /Q /S build
