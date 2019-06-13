::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                        ::
::                                     HOLES PATCHER v1.0                                 ::
::                                 Written By Malik Usman Aura                            ::
::                                    Usmanaura47@gmail.com                               ::
::                                                                                        ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::       
@echo off
mode con: cols=86 lines=32
title Holes Patcher 1.0
cls
echo.
echo.
echo.
echo  ***********************************************************************************
echo  **                                                                               **
echo  **                                HOLES PATCHER                                  **
echo  **                                                                               **
echo  **-------------------------------------------------------------------------------**
echo.
echo  Malik Usman Aura                                                      Leo Softwares
echo.
echo  Holes Patcher will try to patch almost every common open door which can give a way
echo  to bad guys to access your computer.
echo.
echo  DISCLAIMER ::
echo               This software is provided "as is" without warranty of any kind. You 
echo  may use this software at your own risk.    
echo.
echo.
echo  Click On [x] to Exit Now Or Press Any Key To Continue...
echo.
echo.
pause>nul


:: Setup The Counting System
set a=%random%
set /a dis=0
set /a sto=0


:: Start Making A Log
echo.                                                    >> %systemdrive%\%a%.txt
echo.                                                    >> %systemdrive%\%a%.txt
echo  Holes Patcher v1.0                                 >> %systemdrive%\%a%.txt
echo.                                                    >> %systemdrive%\%a%.txt
echo.                                                    >> %systemdrive%\%a%.txt
echo  Started On %time%                                  >> %systemdrive%\%a%.txt
echo  Date Was %date%                                    >> %systemdrive%\%a%.txt
echo  User Was %username% on Computer %computername%     >> %systemdrive%\%a%.txt
echo.                                                    >> %systemdrive%\%a%.txt


:: Step One (Stop And Disable Vernerable Services)
cls
echo.
echo.
echo.
echo                                                                          [ Step One ]
echo.
echo.
echo  *- Stopping Some Services That Are Not Commonly Used By A Normal User.
echo  *- Stopping Some Services That Are Not Commonly Used By A Normal User. >> %systemdrive%\%a%.txt
echo.                                                                        >> %systemdrive%\%a%.txt
echo.
echo  Service Name                                      Status     >> %systemdrive%\%a%.txt
echo  ------------                                      ------     >> %systemdrive%\%a%.txt  
echo.                                                              >> %systemdrive%\%a%.txt
echo  Service Name                                      Status                
echo  ------------                                      ------
echo.                                   
sc query "TlntSvr" | findstr /i "STOPPED" >nul
if "%errorlevel%"=="0" (
     set /a sto=%sto%+1
echo  Telnet                                        Already Stopped
echo  Telnet                                        Already Stopped       >> %systemdrive%\%a%.txt
) else (
     sc stop "TlntSvr" >nul
     sc config "TlntSvr" start= disabled >nul
     set /a dis=%dis%+1
echo  Telnet                                      Stopped Successfully!
echo  Telnet                                      Stopped Successfully!   >> %systemdrive%\%a%.txt
)
sc query "LmHosts" | findstr /i "STOPPED" >nul
if "%errorlevel%"=="0" (
     set /a sto=%sto%+1
echo  TCP/IP NetBIOS Helper                         Already Stopped
echo  TCP/IP NetBIOS Helper                         Already Stopped      >> %systemdrive%\%a%.txt
) else (
     sc stop "LmHosts" >nul
     sc config "LmHosts" start= disabled >nul
     set /a dis=%dis%+1
echo  TCP/IP NetBIOS Helper                       Stopped Successfully!
echo  TCP/IP NetBIOS Helper                       Stopped Successfully!   >> %systemdrive%\%a%.txt
)
sc query "RemoteAccess" | findstr /i "STOPPED" >nul
if "%errorlevel%"=="0" (
     set /a sto=%sto%+1
echo  Routing and Remote                            Already Stopped
echo  Routing and Remote                            Already Stopped      >> %systemdrive%\%a%.txt
) else (
     sc stop "RemoteAccess" >nul
     sc config "RemoteAccess" start= disabled >nul
     set /a dis=%dis%+1
echo  Routing and Remote Access                   Stopped Successfully!
echo  Routing and Remote Access                   Stopped Successfully!   >> %systemdrive%\%a%.txt
)
sc query "RemoteRegistry" | findstr /i "STOPPED" >nul
if "%errorlevel%"=="0" (
     set /a sto=%sto%+1
echo  Remote Registry                               Already Stopped
echo  Remote Registry                               Already Stopped      >> %systemdrive%\%a%.txt
) else (
     sc stop "RemoteRegistry" >nul
     sc config "RemoteRegistry" start= disabled >nul
     set /a dis=%dis%+1
echo  Remote Registry                             Stopped Successfully!
echo  Remote Registry                             Stopped Successfully!   >> %systemdrive%\%a%.txt
)
sc query "RDSessMgr" | findstr /i "STOPPED" >nul
if "%errorlevel%"=="0" (
     set /a sto=%sto%+1
     echo  Remote Desktop Help Session Manager           Already Stopped
     echo  Remote Desktop Help Session Manager           Already Stopped    >> %systemdrive%\%a%.txt
) else (
     sc stop "RDSessMgr" >nul
     sc config "RDSessMgr" start= disabled >nul
     set /a dis=%dis%+1
     echo  Remote Desktop Help Session Manager         Stopped Successfully!
     echo  Remote Desktop Help Session Manager         Stopped Successfully! >> %systemdrive%\%a%.txt
)
sc query "RasMan" | findstr /i "STOPPED" >nul
if "%errorlevel%"=="0" (
     set /a sto=%sto%+1
     echo  Remote Access Connection Manager              Already Stopped
     echo  Remote Access Connection Manager              Already Stopped    >> %systemdrive%\%a%.txt
) else (
     sc stop "RasMan" >nul
     sc config "RasMan" start= disabled >nul
     set /a dis=%dis%+1
     echo  Remote Access Connection Manager            Stopped Successfully!
     echo  Remote Access Connection Manager            Stopped Successfully! >> %systemdrive%\%a%.txt
)
sc query "RasAuto" | findstr /i "STOPPED" >nul
if "%errorlevel%"=="0" (
     set /a sto=%sto%+1
     echo  Remote Access Auto Connection Manager         Already Stopped
     echo  Remote Access Auto Connection Manager         Already Stopped    >> %systemdrive%\%a%.txt
) else (
     sc stop "RasAuto" >nul
     sc config "RasAuto" start= disabled >nul
     set /a dis=%dis%+1
     echo  Remote Access Auto Connection Manager       Stopped Successfully!
     echo  Remote Access Auto Connection Manager       Stopped Successfully! >> %systemdrive%\%a%.txt
)
sc query "NetTcpPortSharing" | findstr /i "STOPPED" >nul
if "%errorlevel%"=="0" (
     set /a sto=%sto%+1
     echo  Net.Tcp Port Sharing Service                  Already Stopped
     echo  Net.Tcp Port Sharing Service                  Already Stopped    >> %systemdrive%\%a%.txt
) else (
     sc stop "NetTcpPortSharing" >nul
     sc config "NetTcpPortSharing" start= disabled >nul
     set /a dis=%dis%+1
     echo  Net.Tcp Port Sharing Service                Stopped Successfully!
     echo  Net.Tcp Port Sharing Service                Stopped Successfully! >> %systemdrive%\%a%.txt
)
sc query "Messenger" | findstr /i "STOPPED" >nul
if "%errorlevel%"=="0" (
     set /a sto=%sto%+1
     echo  Messenger Service                             Already Stopped
     echo  Messenger Service                             Already Stopped    >> %systemdrive%\%a%.txt
) else (
     sc stop "Messenger" >nul
     sc config "Messenger" start= disabled >nul
     set /a dis=%dis%+1
     echo  Messenger Service                           Stopped Successfully!
     echo  Messenger Service                           Stopped Successfully! >> %systemdrive%\%a%.txt
)
sc query "ClipSrv" | findstr /i "STOPPED" >nul
if "%errorlevel%"=="0" (
     set /a sto=%sto%+1
     echo  Clip Book Service                             Already Stopped
     echo  Clip Book Service                             Already Stopped    >> %systemdrive%\%a%.txt
) else (
     sc stop "ClipSrv" >nul
     sc config "ClipSrv" start= disabled
     set /a dis=%dis%+1
     echo  Clip Book Service                           Stopped Successfully!
     echo  Clip Book Service                           Stopped Successfully! >> %systemdrive%\%a%.txt
)
echo.
echo.                                                  >> %systemdrive%\%a%.txt
echo  Total Services Already Stopped :- %sto%
echo  Total Services Already Stopped :- %sto%          >> %systemdrive%\%a%.txt
echo  Total Services Stopped By Holes Patcher :- %dis%
echo  Total Services Stopped By Holes Patcher :- %dis% >> %systemdrive%\%a%.txt
echo.
ping 127.0.0.1 -n 4 >nul
goto steptwo


:: Enable Some Defensive Systems

:steptwo
cls
echo.
echo.
echo.
echo                                                                          [ Step Two ]
echo.
echo.
echo  *- Enabling Some Common Defensive Methods.
echo.                                               >> %systemdrive%\%a%.txt
echo.                                               >> %systemdrive%\%a%.txt
echo  *- Enabling Some Common Defensive Methods.    >> %systemdrive%\%a%.txt
echo.                                               >> %systemdrive%\%a%.txt
echo.
sc query "wuauserv" | findstr /i "RUNNING" >nul
if "%errorlevel%"=="0" (   
     echo  Automatic Updates                             Already Turned ON
     echo  Automatic Updates                             Already Turned ON    >> %systemdrive%\%a%.txt
) else (
     sc config "wuauserv" start= auto >nul
     sc start "wuauserv"              >nul
     echo  Automatic Updates                                  Turned ON
     echo  Automatic Updates                                  Turned ON       >> %systemdrive%\%a%.txt
)
echo.
attrib +r "%systemdrive%\WINDOWS\system32\drivers\etc\hosts" >nul
if "%errorlevel%"=="0" (   
     echo  Locking Down Host File                       Locked Successfully
     echo  Locking Down Host File                       Locked Successfully   >> %systemdrive%\%a%.txt
) else (
     echo  Locking Down Host File                        An Error Occured
     echo  Locking Down Host File                        An Error Occured     >> %systemdrive%\%a%.txt
)
echo.
echo Windows Registry Editor Version 5.00                                            >>temp.reg
echo.                                                                                >>temp.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer] >>temp.reg
echo "NoDriveTypeAutoRun"=dword:0000009f                                             >>temp.reg
REG import temp.reg >nul
del /f /q temp.reg
if "%errorlevel%"=="0" (   
     echo  Disabling Autorun                           Disabled Successfully
     echo  Disabling Autorun                           Disabled Successfully   >> %systemdrive%\%a%.txt
) else (
     echo  Disabling Autorun                             An Error Occured
     echo  Disabling Autorun                             An Error Occured      >> %systemdrive%\%a%.txt
)
echo.
echo Windows Registry Editor Version 5.00                                            >>disableSFS.reg
echo.                                                                                >>disableSFS.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]                       >>disableSFS.reg
echo "forceguest"=dword:00000000                                                     >>disableSFS.reg
REG import disableSFS.reg >nul
del /f /q disableSFS.reg
if "%errorlevel%"=="0" (   
     echo  Disabling Simple File Sharing               Disabled Successfully
     echo  Disabling Simple File Sharing               Disabled Successfully       >> %systemdrive%\%a%.txt
) else (
     echo  Disabling Simple File Sharing                 An Error Occured
     echo  Disabling Simple File Sharing                 An Error Occured          >> %systemdrive%\%a%.txt

)
echo.
echo Windows Registry Editor Version 5.00                                            >>autologon.reg
echo.                                                                                >>autologon.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon]      >>autologon.reg
echo "AutoAdminLogon"="0"                                                            >>autologon.reg
REG import autologon.reg >nul
del /f /q autologon.reg
if "%errorlevel%"=="0" (   
     echo  Disabling Automatic Admin Logon             Disabled Successfully
     echo  Disabling Automatic Admin Logon             Disabled Successfully       >> %systemdrive%\%a%.txt
) else (
     echo  Disabling Automatic Admin Logon               An Error Occured
     echo  Disabling Automatic Admin Logon               An Error Occured          >> %systemdrive%\%a%.txt

)
echo.
echo Windows Registry Editor Version 5.00                                            >>autologonshift.reg
echo.                                                                                >>autologonshift.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon]      >>autologonshift.reg
echo "IgnoreShiftOverride"="1"                                                       >>autologonshift.reg
REG import autologonshift.reg >nul
del /f /q autologonshift.reg
if "%errorlevel%"=="0" (   
     echo  Disabling Auto Logon Shift Override         Disabled Successfully
     echo  Disabling Auto Logon Shift Override         Disabled Successfully       >> %systemdrive%\%a%.txt
) else (
     echo  Disabling Auto Logon Shift Override           An Error Occured
     echo  Disabling Auto Logon Shift Override           An Error Occured          >> %systemdrive%\%a%.txt

)
echo.
echo Windows Registry Editor Version 5.00                                            >>remoteshutdown.reg
echo.                                                                                >>remoteshutdown.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MRxSmb\Parameters]        >>remoteshutdown.reg
echo "RefuseReset"=dword:1                                                           >>remoteshutdown.reg
REG import remoteshutdown.reg >nul
del /f /q remoteshutdown.reg
if "%errorlevel%"=="0" (   
     echo  Browser Service Remote Shutdown             Disabled Successfully
     echo  Browser Service Remote Shutdown             Disabled Successfully          >> %systemdrive%\%a%.txt
) else (
     echo  Browser Service Remote Shutdown               An Error Occured
     echo  Browser Service Remote Shutdown               An Error Occured             >> %systemdrive%\%a%.txt

)
echo.
echo Windows Registry Editor Version 5.00                                            >>disablepwdcache.reg
echo.                                                                                >>disablepwdcache.reg
echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Network] >>disablepwdcache.reg
echo "DisablePwdCaching"=dword:1                                                     >>disablepwdcache.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Network]  >>disablepwdcache.reg
echo "DisablePwdCaching"=dword:1                                                     >>disablepwdcache.reg
REG import disablepwdcache.reg >nul
del /f /q disablepwdcache.reg
if "%errorlevel%"=="0" (   
     echo  Password Caching                            Disabled Successfully
     echo  Password Caching                            Disabled Successfully          >> %systemdrive%\%a%.txt
) else (
     echo  Password Caching                              An Error Occured
     echo  Password Caching                              An Error Occured             >> %systemdrive%\%a%.txt

)
echo.
echo Windows Registry Editor Version 5.00                                            >>restrictanony.reg
echo.                                                                                >>restrictanony.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]                       >>restrictanony.reg
echo "RestrictAnonymous"=dword:1                                                     >>restrictanony.reg
REG import restrictanony.reg >nul
del /f /q restrictanony.reg
if "%errorlevel%"=="0" (   
     echo  Anonymous User Can Get Information          Disabled Successfully
     echo  Anonymous User Can Get Information          Disabled Successfully       >> %systemdrive%\%a%.txt
) else (
     echo  Anonymous User Can Get Information            An Error Occured
     echo  Anonymous User Can Get Information            An Error Occured          >> %systemdrive%\%a%.txt

)
echo.
echo Windows Registry Editor Version 5.00                                            >>dswnetsave.reg
echo.                                                                                >>dswnetsave.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]                       >>dswnetsave.reg
echo "DisableDomainCreds"=dword:1                                                    >>dswnetsave.reg
REG import dswnetsave.reg >nul
del /f /q dswnetsave.reg
if "%errorlevel%"=="0" (   
     echo  Credentials And .Net Password Saving        Disabled Successfully
     echo  Credentials And .Net Password Saving        Disabled Successfully       >> %systemdrive%\%a%.txt
) else (
     echo  Credentials And .Net Password Saving          An Error Occured
     echo  Credentials And .Net Password Saving          An Error Occured          >> %systemdrive%\%a%.txt

)
pause>nul