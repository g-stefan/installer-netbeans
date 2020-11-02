@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

call build.config.cmd

echo -^> vendor %PRODUCT_NAME%

if not exist vendor\ mkdir vendor

set WEB_LINK=https://mirrors.hostingromania.ro/apache.org/netbeans/netbeans/%PRODUCT_VERSION%/netbeans-%PRODUCT_VERSION%-bin.zip
if not exist vendor\netbeans-%PRODUCT_VERSION%-bin.zip curl --insecure --location %WEB_LINK% --output vendor\netbeans-%PRODUCT_VERSION%-bin.zip
