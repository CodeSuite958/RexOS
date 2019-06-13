@echo Off
color E
title Hiber Plus v1.0
mode con: cols=80 lines=32
:main
cls
echo.
echo.
echo ================================================================================
echo.
echo $$       $$ $$$$$$$$$$$$$ $$$$$$$$$$$ $$$$$$$$ $$$$$$$$$           $$$
echo $$       $$      $$       $$        $ $        $       $           $$$
echo $$       $$      $$       $$      $   $        $       $           $$$
echo $$       $$      $$       $$     $    $        $       $           $$$
echo $$$$$$$$$$$      $$       $$$$$$$$$   $$$$$$$  $$$$$$$$$   $$$$$$$$$$$$$$$$$$$$
echo $$       $$      $$       $$     $    $        $$          $$$$$$$$$$$$$$$$$$$$
echo $$       $$      $$       $$      $   $        $ $                 $$$
echo $$       $$      $$       $$        $ $        $  $                $$$
echo $$       $$ $$$$$$$$$$$$$ $$$$$$$$$$$ $$$$$$$$ $   $$$$$           $$$
echo.
echo ================================================================================
echo.
echo                              Welcome To Hiber Plus
echo.
echo This is a free software which will enable and disable Windows feature called
echo Hibernation.This software will work with Windows XP,Vista And Seven only.You
echo can distibute this software if you want.This Software is tested by me and it
echo is working well.However If there is a problem then I hope you will tell me.
echo            --------------------------------------------------------------
echo                               For Feedback Contact Me 
echo            --------------------------------------------------------------
echo                             Email:Usmanaura47@gmail.com
echo                                 Phone:+923475179988
echo           ::Developed By Malik Usman Aura.From Chowkazam,Layyah Pakistan::
echo.
echo Type Y to goto selection screen so that you can enable or disable hiberation
echo.
echo.
set/p "cho=>"
if %cho%==Y goto start
if %cho%==y goto start
if %cho%==exit goto 1
cls
goto main
:start
cls
echo =----------------------------What You Want To Do?------------------------------=
echo =                         Please Type And Press Enter                          =
echo =                                                                              =
echo =      1=To Enable Hiberation                     2=To Disable Hiberation      =
echo =                            3=Go to Main Screen                               =
echo =                                                                              =
echo =------------------------------------------------------------------------------=
set/p "cho=>"
if %cho%==1 goto ON
if %cho%==2 goto OFF
if %cho%==3 goto main
if %cho%==usmanaura47@gmail.com goto alpha
cls
goto start
:ON
@echo off
cls
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO. บ                                                                           บ
ECHO  บ                       Hibernation Is Being Enabled                        บ
ECHO. บ                                                                           บ
ECHO  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO.
powercfg -h on
pause
goto main
:OFF
CLS
@echo off
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO.
ECHO  ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
ECHO. บ                                                                           บ
ECHO  บ                       Hibernation Is Being Disabled                       บ
ECHO. บ                                                                           บ
ECHO  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ECHO.
ECHO.
powercfg -h off
pause
goto main
:alpha
@echo off
cls
mode con: cols=80 lines=32
echo.
echo.
msg * Hy!Welcome To My Secret Area.Thanks For using Hiber Plus
:bravo
cls
mode con: cols=80 lines=32
echo                            Welcome To my Secret Area
echo       Well you are in my softwares secret area so this is a trick for you.
echo.
echo.
echo ---This trick will change your computers Processor Name In System Properties---
echo.
echo 1. Goto Notepad And Type the following lines in it.
echo.
echo 2. Windows Registry Editor Version 5.00
echo    [HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\CentralProcessor\0]
echo    "ProcessorNameString"="Intel i7 Quad Core"
echo.
echo 3.Save it as Change.reg
echo.
echo 4.Now just run the file and click OK.
echo.
echo 5.Check your Processor Name which will be changed to Intel Core i7 Quad Core
echo.
echo                  I am a Pakistani and I am Proud of it.
echo                       We are sleeping but not dead
echo                       ++++++++++++++++++++++++++++
echo                  Long live Islamic Republic Of Pakistan
echo.
echo.
echo               Please Type U To Go Back To Selection Screen
set/p "cho=>"
if %cho%==u goto start
if %cho%==U goto start
cls
goto bravo





