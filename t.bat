@echo off
echo "%*"
set "a=%*"
set b=\httpServerPoco.exe
echo %a%
echo %b%

sc create httpServerPocoService binpath= "%a%%b%"
sc config httpServerPocoService start= AUTO 
sc start httpServerPocoService
