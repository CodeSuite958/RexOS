@echo off
TITLE Ultimate Locker v 1.0
color 2e
mode con: cols=60 lines=30
:start
cls
echo.
echo ------------------------------------------------------------ 
echo                             Welcome
echo ------------------------------------------------------------ 
echo. 
echo                        Ultimate Locker 
echo                              v1.0
echo                    Coded By Malik Usman Aura
echo.
echo    Note:This program will only lock your system until you
echo                       restart the system
echo.              
echo. 
echo ------------------------------------------------------------
echo. 
echo Do You Want to Lock The Screen (Y/N)
set/P "name=>> "
IF "%name%"=="y"  goto h
IF "%name%"=="Y"  goto h
IF "%name%"=="n"  goto a
IF "%name%"=="N"  goto a
IF "%name%"==""  goto e
goto start
:h
taskkill /f /t /im "explorer.exe"
goto r
:a
echo.
echo.
echo                        Ok As You Wish
pause>nul
exit
:e
echo.
echo.
echo                             Error
pause>nul
goto start
