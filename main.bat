@echo off
rem This file is generated from main.pbat, all edits will be lost
if exist "C:\msys64\usr\bin\bash.exe" set MSYS2=C:\msys64\usr\bin\bash.exe
if not defined MSYS2 (
echo MSYS2 not found
exit /b
)
set CHERE_INVOKING=yes
if exist "C:\Program Files\7-Zip\7z.exe" set P7Z=C:\Program Files\7-Zip\7z.exe
if not defined P7Z (
echo P7Z not found
exit /b
)
"%MSYS2%" %~dp0main-build.sh
set MSYSTEM=MINGW32
"%P7Z%" a -y "OpenSSL_1_0_1m.zip" OpenSSL