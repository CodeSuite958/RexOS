@echo off
title D R I V E--------------=====Email:Usmanaura47@gmail.com=====---------F I X E R
color 9f
mode con: cols=73 lines=50
:u
cls
echo.
echo %username%                                             Free Version
echo %time%                                                %date%
echo.			
echo.     
echo.    
echo                                 D R I V E
echo                                 F I X E R
echo.
echo                                   B   Y 
echo                                 M A L I K
echo                                 U S M A N
echo                                  A U R A
echo.
echo                          Freeware for every one
echo                       Hoping to get good feedback
echo.
echo                       This software will check your 
echo                selected drive for errors and bad sectors
echo                  and will try to fix them automatically
echo.
echo 		Enter the drive letter you want to check
echo.
set/p "cho=Ready=>"
IF "%cho%"=="" goto error
if %cho%==exit goto end
goto m
:m
cls
echo.
echo.
echo Dear! %username% This program will check your "%cho%" drive for errors
echo and will fix them.This can take time depending on your computers speed
echo.
chkdsk %cho%: /f /r
echo.
echo.
echo                    Press any key to exit Drive Fixer!
pause>nul
exit
:error
cls
echo.
echo.
echo.
echo.
echo				    Sorry Wrong Coice!
echo                    Please enter a valid drive letter
pause>nul
goto u
:end
exit

