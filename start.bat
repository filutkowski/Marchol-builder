@echo off
title installing
echo installing on
systeminfo
call .\PGit\bin\git.exe clone https://github.com/filutkowski/Marchol.git
cd Marchol
call ..\node\npm.cmd install
call ..\node\npx.cmd electron-builder
cd pack
start installer.exe
exit