@echo off
set "modpath=%~dp0"
for %%i in ("%cd%") do set "modname=%%~nxi"
cd ../..
CodenameEngine -mod "%modname%"
cd "%modpath%"
