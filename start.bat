@echo off
call .\PGit\bin\git.exe clone https://github.com/filutkowski/Marchol.git
cd Marchol
set one=%~dp0
call ..\node\npm.cmd install
call ..\node\npx.cmd electron-builder
cd Marchol
cd pack
start installer.exe
echo %one%
pause