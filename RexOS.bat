 @echo off
color 0a
title RexOS - Version 1.0.0
echo.
echo.
echo RexOS scanning for operating system...
echo Operating system detected
pause

cls            
echo Login
echo Choose a name for this session:
set/p name=
echo.
cls
echo Welcome %name%
echo.
pause

:menu
cls
echo User Menu
echo.
echo Type the number corresponding with the task
echo 1.System Info 
echo 2.Calc 
echo 3.Clock 
echo 4.Calendar 
echo 5.Files
echo 6.Antivirus Setup
echo 7.Master Utility
echo 8.Utilities Package

set /p input=
if %input% == 1 goto info
if %input% == 2 goto calc 
if %input% == 3 start batchclock.bat
if %input% == 4 goto calendar
if %input% == 5 start fileexplorerrexos.exe
if %input% == 6 start rexosavsetup.exe
if %input% == 7 start systemutility.bat
if %input% == 8 goto package
:package

echo Choose Utility you would like to access:
echo (1) Drive Fixer
echo (2) Hiber Plus
echo (3) Hole Patcher
echo (4) .rar File Archive Cracker(DEV
echo (5) Taskman Fixer
echo (6) Ultimate Locker
echo (7) Windows(backupOS) 
set /p %tool% = Choose a Utility:
if "%tool%"=="1" start drivefixer.bat
if "%tool%"=="2" start hiberplus.bat
if "%tool%"=="3" start holespatcher.bat
if "%tool%"=="4" start rarcrack.bat
if "%tool%"=="5" start taskmanfixer.bat
if "%tool%"=="6" start ultimatelocker.bat
if "%tool%"=="7" start wininfo.bat
:info
cls
echo.=======================
echo    RexOS
echo.=======================
echo     DETAILS  
echo.
echo     VERSION = 0.0.1
echo.     
echo     RAM = 1GB
echo.
echo     CORE = INTEL I5
echo.
echo     HARD_DRIVE = 250GB     
echo.   
echo     Kernel ver = 5.6.7
echo.  
echo    Build = 1
echo.
echo.========================
echo     @Copyright RexOS
echo.========================
echo.
echo Wanna check for update?

echo  1. to check for update 
echo  2. Menu

set /p check= 

if %check% == 1 goto update

if %check% == 2 goto menu




     
:update 
cls

echo Checking for new version /Update.............
echo.
pause
cls
echo.
echo no update available,Try Again fter some time.
echo.
pause
goto menu

:antivirus

echo RexOS is developmental OS.
echo As so, it does not have an antivirus.
pause
goto menu
:files
:calc

cd Utilities start codesuitecalc.bat