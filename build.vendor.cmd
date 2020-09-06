@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

if not exist vendor\ mkdir vendor

set WEB_LINK=https://mirrors.hostingromania.ro/apache.org/netbeans/netbeans/12.0/netbeans-12.0-bin.zip
if not exist vendor\netbeans-12.0-bin.zip curl --insecure --location %WEB_LINK% --output vendor\netbeans-12.0-bin.zip
