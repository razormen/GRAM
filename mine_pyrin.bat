@echo off

setlocal enableDelayedExpansion

Rem #################################
Rem ## Begin of user-editable part ##
Rem #################################

set "POOL=de.pyrin.herominers.com:1177"
set "WALLET=pyrin:qq92h3nryfwq0gkh73cwvjh9hhqlq2mank9sfxtgc99hqwn2ec6u2gszphr0u"

set "EXTRAPARAMETERS=--apiport 8020"

Rem #################################
Rem ##  End of user-editable part  ##
Rem #################################

cd /d %~dp0

set MyVariable=%CD%\lolMiner.exe

:WindowsVer
echo "Running lolMiner from %MyVariable%"
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto W10
goto OtherW

:W10
"%MyVariable%"  --algo PYRIN --pool !POOL! --user !WALLET!  --watchdog exit !EXTRAPARAMETERS!
if %ERRORLEVEL% == 42 (
	timeout 10
	goto W10
)
goto END

:OtherW
"%MyVariable%"  --algo PYRIN --pool !POOL! --user !WALLET! --watchdog exit !EXTRAPARAMETERS! --nocolor
if %ERRORLEVEL% == 42 (
	timeout 10
	goto OtherW
)

:END
pause
