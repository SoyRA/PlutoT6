:: ---------------- Ignora esto ----------------
@ECHO OFF
TITLE Plutonium Launcher
:: ---------------------------------------------
@SETLOCAL ENABLEEXTENSIONS
@CD /D "%~dp0"
:: ---------------------------------------------


:: Ruta donde tienes el CoD: BO II
SET T6=C:\Juegos\CoD BO II


:: Nombre que quieres tener
SET NM=GitHub


:: ------------------- Menú --------------------
:Menu
CLS
ECHO.
ECHO ///////////////////////////////////////
ECHO ////           Plutonium           ////
ECHO ///////////////////////////////////////
ECHO.
ECHO [ 1 ] Plutonium Launcher
ECHO [ 2 ] PlutoT6 - ZM
ECHO [ 3 ] PlutoT6 - MP
ECHO.
SET /P VER="Iniciar el "
IF NOT %VER%=="" SET VER=%VER:~0,1%
IF %VER%==1 goto PU
IF %VER%==2 goto T6ZM
IF %VER%==3 goto T6MP
GOTO Menu
:: ----------------- Opción 1 ------------------
:PU
TITLE Plutonium Updater
CLS
plutonium.exe
EXIT
:: ----------------- Opción 2 ------------------
:T6ZM
TITLE PlutoT6 - Offline Mode
CLS
ECHO.
ECHO.
ECHO # Aviso
ECHO - Iniciando el PlutoT6 (ZM)
ECHO.
ECHO.
.\bin\plutonium-bootstrapper-win32.exe t6zm "%T6%" -lan +set name "%NM%"
EXIT
:: ----------------- Opción 3 ------------------
:T6MP
TITLE PlutoT6 - Offline Mode
CLS
ECHO.
ECHO.
ECHO # Aviso
ECHO - Iniciando el PlutoT6 (MP)
ECHO.
ECHO.
.\bin\plutonium-bootstrapper-win32.exe t6mp "%T6%" -lan +set name "%NM%"
EXIT