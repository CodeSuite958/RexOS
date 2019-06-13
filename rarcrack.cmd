@echo off
color f0
title + RAR Cracker  [%username%]   [%date%]   [%time%]
mode con: cols=70 lines=40

:us
echo.
echo.
echo.  
SET PASS=0
SET TMP=TempFold
MD %TMP%

:usm
cls
color f0
echo.
echo.                  
echo.
echo.
echo.
echo.
ECHO  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO. บ     บ          + RAR Password Cracker 1.0 Free Version      บบบบบ 
ECHO  บ     บ                                                       บบบบบ
echo  บ     บ                                                       บบบบบ
ECHO  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
echo [1] Start Cracking
echo [2] About Program
echo [3] Program Notes
echo [4] Visit Our Website 
echo [5] Do trick
echo [x] Exit
echo.
echo.
SET/P "k=ออ>"
IF "%k%"=="1" goto rar
IF "%k%"=="2" goto aboutp
IF "%k%"=="3" goto notes
IF "%k%"=="4" goto soft
IF "%k%"=="5" goto trick
IF "%k%"=="x" goto exit
IF "%k%"=="X" goto exit
IF "%k%"=="" goto error
goto usm

:RAR
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo         -----------------------------------------------------
echo         *     PLEASE ENTER SOME DETAILS ABOUT YOUR FILE     *
echo         -----------------------------------------------------
echo.
echo Please note that enter the archive name with its extension as example
echo is given.  In file path only enter full file path not the name of the
echo archive.
echo.
echo + RAR Cracker works only with RAR archives
echo.
echo.
SET/P "NAME=Enter File Name (eg file.rar): "
IF "%NAME%"=="" goto NERROR
goto GPATH

:NERROR
echo.
echo.
echo                           ------------------
echo                           *      ERROR     *
echo                           ------------------
echo.
echo Sorry you can't leave it blank.
echo.
pause>nul
goto RAR

:GPATH
echo.
echo.
SET/P "PATH=Enter Full Path (eg C:\doc)  : "
IF "%PATH%"=="" goto NERROR
goto NEXT

:NEXT
IF EXIST "%PATH%\%NAME%" GOTO SP
goto PATH

:PATH
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                           ------------------
echo                           *      ERROR     *
echo                           ------------------
echo.
echo Sorry File Not Found...
echo.
pause>nul
goto RAR

:SP
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                            ------------------
echo                            *    Cracking    *
echo                            ------------------
echo.
echo.
echo                Press any key to  start cracking Procedure
echo                  Can take time from a minute to an hour
echo                             Please be patient
pause>nul
echo.
echo.
echo Generating Password...
echo. 

:START
title + RAR Cracker Is Cracking Password...   [Bruteforce Attack]
SET /A PASS=%PASS%+1
echo           7998812398765"Please! Wait Cracking"5678932179988
echo           7998876535566"Please! Wait Cracking"5678932179988
echo.
echo           7998833844789"   Can  Take  Time   "8696544479988
echo           7998858532156"   Can  Take  Time   "8086433279988
UNRAR E -INUL -P%PASS% "%PATH%\%NAME%" "%TMP%"
IF /I %ERRORLEVEL% EQU 0 GOTO FINISH
GOTO START

:FINISH
RD %TMP% /Q /S 
cls
title Password Cracked
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                           -------------------
echo                           *  + RAR Cracker  *
echo                           -------------------
echo.
echo.
echo Dear %username% Password Has Been Cracked
echo.
echo.
echo File Name = %NAME%
echo.
echo.
echo Directory = %PATH%
echo.
echo.
echo Password  = %PASS%
echo.
echo.
echo All above information has been saved in %systemdrive% drive.

:save
if exist "%systemdrive%\+RARCracker.txt" goto del
cd /d %systemdrive%\
echo + RAR Cracker was run by %username% on %date%,%time% on computer "%computername%".File name was "%NAME%",file path was "%PATH%" and password was "%PASS%".> "%systemdrive%\+RAR Cracker.txt"
pause>NUL
goto exit

:exit
RD %TMP% /Q /S
exit

:del
cd /d %systemdrive%\
del +RAR Cracker.txt /Q /S
goto save

:aboutp
cls
echo.
echo.
echo.
echo.
echo %username% you are using +RAR Cracker on
ver
echo.      
echo.
echo. 
echo.
echo.                                          
echo            Program Version :- 1.0                
echo.                                                 
echo            License         :- Freeware                  
echo.                                                 
echo            Supported OS    :- Microsoft Windows XP,Vista,Seven
echo.                                                 
echo            Programmer      :- Malik Usman Aura           
echo.                                                 
echo            Email           :- Usmanaura47@gmail.com  
echo.
echo            Website         :- sites.google.com/site/leosoftwares4u    
echo.                                                 
echo. 
echo.
echo.
echo         For any suggestions,support or help feel free to mail me 
echo                   Copyright (c) Malik Usman Aura
echo.
echo.
echo + RAR Cracker is distributed as free software. You may distribute
echo it freely.It is prohibited to modify or sell this software without 
echo the author's permission.
pause>nul
goto usm

:notes
cls
echo.
echo.
echo.
echo.
echo.
echo                           -------------------
echo                           *  + RAR Cracker  *
echo                           -------------------
echo.
echo.
echo.
echo.
echo.
echo + RAR Cracker is an easy-to-use,free and fast RAR archives password
echo cracking utility which uses Command Line Interface (CLI) as a user
echo interface.This program uses bruteforce method to crack any type of
echo password.You only need to enter the file name and location and let
echo this program do its work.
echo.
echo.
echo.
echo Please note that cracking might take long time because of the long
echo length and use of secured password.So please be patient.Any temp file
echo will be removed automatically.Please donot attempt to delete them 
echo manually or you can face fatal error's.
echo Also remember that you can only crack RAR archives password.Thanks!
echo Please read the read me file included with this setup for more info.
echo.
pause>nul
goto usm

:error
echo.
echo.
echo                           ------------------
echo                           *      ERROR     *
echo                           ------------------
echo.
echo Sorry you can't leave it blank.
echo.
pause>nul
goto usm

:trick
cls
set /a raf=0

:tstart
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
set /a raf=%raf%+1
if %raf%==1000 goto trick1
goto tstart

:trick1
color 4e
set /a maf=0

:tstart1
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
set /a maf=%maf%+1
if %maf%==1000 goto trick2
goto tstart1


:trick2
color 71
set /a caf=0

:tstart2
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
set /a caf=%caf%+1
if %caf%==1000 goto trick3
goto tstart2


:trick3
color 2e
set /a laf=0

:tstart3
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
set /a laf=%laf%+1
if %laf%==1000 goto trick4
goto tstart3

:trick4
color f6
set /a naf=0

:tstart4
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
set /a naf=%naf%+1
if %naf%==1000 goto trick5
goto tstart4

:trick5
set /a cnf=0
goto tf

:tf
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo + RAR Cracker
ping 127.0.0.1 -n 4 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                            Malik Usman Aura
echo                             Leo Softwares
ping 127.0.0.1 -n 4 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                  Usmanaura47@gmail.com
ping 127.0.0.1 -n 4 >nul
goto usm

:soft
cls
start http://sites.google.com/site/leosoftwares4u/home
goto usm


