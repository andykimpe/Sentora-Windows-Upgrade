@echo off
rem %1 = install dir
rem %2 = temp dir
mkdir %1\logs\Installers\ >> %1\logs\Installers\sentora-windows-install.log
echo install dir %1 >> %1\logs\Installers\sentora-windows-install.log
echo temp dir %2 >> %1\logs\Installers\sentora-windows-install.log
echo your_full_name %3 >> %1\logs\Installers\sentora-windows-install.log
echo your_email %4 >> %1\logs\Installers\sentora-windows-install.log
echo your_fqdn %5 >> %1\logs\Installers\sentora-windows-install.log
echo password_for_zadmin %6 >> %1\logs\Installers\sentora-windows-install.log
echo disable Windows Firewall >> %1\logs\Installers\sentora-windows-install.log
echo disable Windows Firewall
C:\windows\System32\netsh.exe Advfirewall set allprofiles state off >> %1\logs\Installers\sentora-windows-install.log
rem code test for backup and update all database
IF EXIST "C:\zpanel\panel\cnf\db.php" (
 rem test uninstall old zpanel
 C:\Windows\System32\net.exe stop apache >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete apache >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\net.exe stop named >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete named >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\net.exe stop cron >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete cron >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\net.exe stop "Filezilla Server" >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete "Filezilla Server" >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\net.exe stop hmailserver >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete hmailserver >> %1\logs\Installers\sentora-windows-install.log
C:\Windows\System32\reg.exe query HKEY_LOCAL_MACHINE\SOFTWARE\hMailServer >> %1\logs\Installers\sentora-windows-install.log
   if %ERRORLEVEL% EQU 0 (
C:\Windows\System32\reg.exe delete HKEY_LOCAL_MACHINE\SOFTWARE\hMailServer /f >> %1\logs\Installers\sentora-windows-install.log
   )
C:\Windows\System32\reg.exe query HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\hMailServer >> %1\logs\Installers\sentora-windows-install.log
   if %ERRORLEVEL% EQU 0 (
C:\Windows\System32\reg.exe delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\hMailServer /f >> %1\logs\Installers\sentora-windows-install.log
   )
   
C:\Windows\System32\reg.exe query HKEY_CURRENT_USER\Software\hMailServer >> %1\logs\Installers\sentora-windows-install.log
   if %ERRORLEVEL% EQU 0 (
C:\Windows\System32\reg.exe delete HKEY_CURRENT_USER\Software\hMailServer /f >> %1\logs\Installers\sentora-windows-install.log
   )
C:\Windows\System32\reg.exe query HKEY_CURRENT_USER\SOFTWARE\WOW6432Node\hMailServer >> %1\logs\Installers\sentora-windows-install.log
   if %ERRORLEVEL% EQU 0 (
C:\Windows\System32\reg.exe delete HKEY_CURRENT_USER\SOFTWARE\WOW6432Node\hMailServer /f >> %1\logs\Installers\sentora-windows-install.log
   )

C:\Windows\System32\reg.exe query HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\hMailServer_is1 >> %1\logs\Installers\sentora-windows-install.log
   if %ERRORLEVEL% EQU 0 (
C:\Windows\System32\reg.exe delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\hMailServer_is1 /f >> %1\logs\Installers\sentora-windows-install.log
   )

C:\Windows\System32\reg.exe query HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\hMailServer_is1 >> %1\logs\Installers\sentora-windows-install.log
   if %ERRORLEVEL% EQU 0 (
C:\Windows\System32\reg.exe delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\hMailServer_is1 /f >> %1\logs\Installers\sentora-windows-install.log
   )

 C:\Windows\System32\net.exe stop mysql >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete mysql >> %1\logs\Installers\sentora-windows-install.log
C:\zpanel\bin\mysql\bin\mysqld.exe --install >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\net.exe start mysql >> %1\logs\Installers\sentora-windows-install.log
 C:\zpanel\bin\php\php.exe %2\db.php %1 %2 >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\net.exe stop mysql >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete mysql >> %1\logs\Installers\sentora-windows-install.log
 del C:\Windows\zppy.bat >> %1\logs\Installers\sentora-windows-install.log
 del C:\Windows\setso.bat >> %1\logs\Installers\sentora-windows-install.log
 del C:\Windows\zppy.bat >> %1\logs\Installers\sentora-windows-install.log
 del C:\Windows\System32\crontab.txt >> %1\logs\Installers\sentora-windows-install.log
 rem remove old path varaible environement
C:\Windows\System32\reg.exe delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /f >> %1\logs\Installers\sentora-windows-install.log
rem remove old and updated folder
rem pause
goto dbupdate
)
IF EXIST "C:\sentora\panel\cnf\db.php" (
 rem test uninstall old zpanel
 C:\Windows\System32\net.exe stop apache >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete apache >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\net.exe stop named >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete named >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\net.exe stop cron >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete cron >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\net.exe stop "Filezilla Server" >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete "Filezilla Server" >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\net.exe stop hmailserver >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete hmailserver >> %1\logs\Installers\sentora-windows-install.log
C:\Windows\System32\reg.exe query HKEY_LOCAL_MACHINE\SOFTWARE\hMailServer >> %1\logs\Installers\sentora-windows-install.log
C:\Windows\System32\reg.exe query HKEY_LOCAL_MACHINE\SOFTWARE\hMailServer >> %1\logs\Installers\sentora-windows-install.log
   if %ERRORLEVEL% EQU 0 (
C:\Windows\System32\reg.exe delete HKEY_LOCAL_MACHINE\SOFTWARE\hMailServer /f >> %1\logs\Installers\sentora-windows-install.log
   )
C:\Windows\System32\reg.exe query HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\hMailServer >> %1\logs\Installers\sentora-windows-install.log
   if %ERRORLEVEL% EQU 0 (
C:\Windows\System32\reg.exe delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\hMailServer /f >> %1\logs\Installers\sentora-windows-install.log
   )
   
C:\Windows\System32\reg.exe query HKEY_CURRENT_USER\Software\hMailServer >> %1\logs\Installers\sentora-windows-install.log
   if %ERRORLEVEL% EQU 0 (
C:\Windows\System32\reg.exe delete HKEY_CURRENT_USER\Software\hMailServer /f >> %1\logs\Installers\sentora-windows-install.log
   )
C:\Windows\System32\reg.exe query HKEY_CURRENT_USER\SOFTWARE\WOW6432Node\hMailServer >> %1\logs\Installers\sentora-windows-install.log
   if %ERRORLEVEL% EQU 0 (
C:\Windows\System32\reg.exe delete HKEY_CURRENT_USER\SOFTWARE\WOW6432Node\hMailServer /f >> %1\logs\Installers\sentora-windows-install.log
   )

C:\Windows\System32\reg.exe query HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\hMailServer_is1 >> %1\logs\Installers\sentora-windows-install.log
   if %ERRORLEVEL% EQU 0 (
C:\Windows\System32\reg.exe delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\hMailServer_is1 /f >> %1\logs\Installers\sentora-windows-install.log
   )

C:\Windows\System32\reg.exe query HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\hMailServer_is1 >> %1\logs\Installers\sentora-windows-install.log
   if %ERRORLEVEL% EQU 0 (
C:\Windows\System32\reg.exe delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\hMailServer_is1 /f >> %1\logs\Installers\sentora-windows-install.log
   )
 C:\Windows\System32\net.exe stop mysql >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete mysql >> %1\logs\Installers\sentora-windows-install.log
C:\zpanel\bin\mysql\bin\mysqld.exe --install >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\net.exe start mysql >> %1\logs\Installers\sentora-windows-install.log
C:\Windows\System32\taskkill.exe /f /im apachemonitor.exe >> %1\logs\Installers\sentora-windows-install.log
C:\Windows\System32\taskkill.exe /f /im "filezilla server interface.exe" >> %1\logs\Installers\sentora-windows-install.log
 C:\zpanel\bin\php\php.exe %2\db.php %1 %2 >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\net.exe stop mysql >> %1\logs\Installers\sentora-windows-install.log
 C:\Windows\System32\sc.exe delete mysql >> %1\logs\Installers\sentora-windows-install.log
 rem remove old path varaible environement
C:\Windows\System32\reg.exe delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /f >> %1\logs\Installers\sentora-windows-install.log
rem remove old and updated folderrem pause
goto dbupdate
)
:dbupdate
rem update.bat %1 %2
cd %2
rmdir /S /Q Apache24
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)
:64BIT
rem install Visual C++ redistributable 2005 2008 2011 2013 require for apache php and mysql >> %1\logs\Installers\sentora-windows-install.log
echo install Visual C++ redistributable >> %1\logs\Installers\sentora-windows-install.log
%2\vcredist5_x64.exe /q
%2\vcredist8_x64.exe /q /norestart
%2\vcredist11_x64.exe /q /norestart
%2\vcredist13_x64.exe /q /norestart
rem install microsoft net framework 3.5 and 4.5 require for hmailserver
echo install microsoft net framework 3.5 and 4.5 >> %1\logs\Installers\sentora-windows-install.log
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto W10
if "%version%" == "6.3" goto W8
if "%version%" == "6.2" goto W8
if "%version%" == "6.1" goto W7
if "%version%" == "6.0" goto W7
if "%version%" == "5.9" goto W7
if "%version%" == "5.8" goto W7
if "%version%" == "5.7" goto W7
if "%version%" == "5.6" goto W7
if "%version%" == "5.5" goto W7
if "%version%" == "5.4" goto W7
if "%version%" == "5.3" goto W7
if "%version%" == "5.2" goto W7
if "%version%" == "5.0" goto W7
if "%version%" == "5.0" goto W7
rem etc etc
endlocal
:W7
%2\dotnetfx35.exe /q /norestart
%2\NDP452-KB2901907-x86-x64-AllOS-ENU.exe /q /norestart
goto ENDNET
:W8
rem for windows 8 and 10 net framework 3.5 install online using dism
C:\Windows\System32\dism.exe /Online /Enable-Feature /FeatureName:NetFx3 /All
rem msu dependencie for windows 8 and windows server 2012
rem read https://github.com/Dravion/hmailserver/releases
mkdir %2\updates
rename %2\Windows8.1-KB2919442-x64.msu %2\updates\Windows8.1-KB2919442-x64.msu
rename %2\Windows8.1-KB2919355-x64.msu %2\updates\Windows8.1-KB2919355-x64.msu
C:\Windows\System32\dism.exe /online /add-package /packagepath:%2\updates
:W10
echo install chocolatey and vcredist-all
rem timeout /t 60
powershell "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
C:\ProgramData\chocolatey\bin\choco.exe feature enable -n=allowGlobalConfirmation
C:\ProgramData\chocolatey\bin\choco.exe upgrade chocolatey
C:\ProgramData\chocolatey\bin\choco.exe install vcredist-all
C:\ProgramData\chocolatey\bin\choco.exe upgrade vcredist-all
C:\ProgramData\chocolatey\bin\choco.exe feature disable -n=allowGlobalConfirmation
rem for windows 8 and 10 net framework 3.5 install online using dism
echo net framework 3.5 install online using dism
rem timeout /t 60
C:\Windows\System32\dism.exe /Online /Enable-Feature /FeatureName:NetFx3 /All
:ENDNET
echo extract apache
rem timeout /t 60
%1\bin\7zip\7z.exe x httpd-2.4.38-win64-VC11.zip
echo extract php
rem timeout /t 60
cd %1\bin\php
%1\bin\7zip\7z.exe x %2\php-5.6.40-Win32-VC11-x64.zip
cd %2
echo extract mysql
rem timeout /t 60
rmdir /S /Q mysql-5.7.29-winx64
%1\bin\7zip\7z.exe x %2\mysql-5.7.29-winx64.zip
C:\Windows\System32\xcopy.exe /s /e /h %2\mysql-5.7.29-winx64 %1\bin\mysql
echo extract bind9
rem timeout /t 60
cd %1\bin\bind\bin\
%1\bin\7zip\7z.exe x %2\BIND9.14.8.x64.zip
echo extract cygtools
rem timeout /t 60
cd %1\bin\cygtools
%1\bin\7zip\7z.exe x %2\cygtools-64bit.zip
GOTO END
:32BIT
echo install Visual C++ redistributable
rem timeout /t 60
%2\vcredist5_x86.exe /q
%2\vcredist8_x86.exe /q /norestart
%2\vcredist11_x86.exe /q /norestart
%2\vcredist13_x86.exe /q /norestart
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto W10
if "%version%" == "6.3" goto W8
if "%version%" == "6.2" goto W8
if "%version%" == "6.1" goto W7
if "%version%" == "6.0" goto W7
if "%version%" == "5.9" goto W7
if "%version%" == "5.8" goto W7
if "%version%" == "5.7" goto W7
if "%version%" == "5.6" goto W7
if "%version%" == "5.5" goto W7
if "%version%" == "5.4" goto W7
if "%version%" == "5.3" goto W7
if "%version%" == "5.2" goto W7
if "%version%" == "5.0" goto W7
if "%version%" == "5.0" goto W7
rem etc etc
endlocal
:W7
%2\dotnetfx35.exe /q /norestart
%2\NDP452-KB2901907-x86-x64-AllOS-ENU.exe /q /norestart
goto ENDNET
:W8
rem for windows 8 and 10 net framework 3.5 install online using dism
C:\Windows\System32\dism.exe /Online /Enable-Feature /FeatureName:NetFx3 /All
rem msu dependencie for windows 8 and windows server 2012
rem read https://github.com/Dravion/hmailserver/releases
rem not require en 32 bit version
rem dism /online /add-package /packagepath:%2\updates
:W10
rem for windows 8 and 10 net framework 3.5 install online using dism
C:\Windows\System32\dism.exe /Online /Enable-Feature /FeatureName:NetFx3 /All
:ENDNET
%1\bin\7zip\7z.exe x httpd-2.4.38-win32-VC11.zip
cd %1\bin\php
%1\bin\7zip\7z.exe x %2\php-5.6.40-Win32-VC11-x86.zip
cd %2
rmdir /S /Q mysql-5.7.29-win32
%1\bin\7zip\7z.exe x %2\mysql-5.7.29-win32.zip
C:\Windows\System32\xcopy.exe /s /e /h %2\mysql-5.7.29-win32 %1\bin\mysql
cd %1\bin\bind\bin\
%1\bin\7zip\7z.exe x %2\BIND9.14.8.x86.zip
cd %1\bin\cygtools
%1\bin\7zip\7z.exe x %2\cygtools-32bit.zip
GOTO END
:END
cd %2

echo start configure
rem timeout /t 60
C:\Windows\System32\xcopy.exe /s /e /h %2\Apache24 %1\bin\apache
%1\bin\php\php.exe %2\install.php %1 %2 %3 %4 %5 %6
echo finish configure
rem timeout /t 60

%1\bin\mysql\bin\mysqld.exe --defaults-file="%1\bin\mysql\my.ini" --console --initialize-insecure=on --lower-case-table-names=1
echo finish init mysql
rem timeout /t 60
echo Installing MySQL Service..
%1\bin\mysql\bin\mysqld.exe --install
echo Starting MySQL Service..
C:\Windows\System32\net.exe start MySQL

echo Installing Apache HTTPd Service..
%1\bin\apache\bin\httpd.exe -k install -n Apache
echo Starting Apache HTTPd service..
C:\Windows\System32\net.exe start Apache

echo Installing Filezilla service..
"%1\bin\filezilla\Filezilla server.exe" /install auto
echo Starting Filezilla service..
C:\Windows\System32\net.exe start "FileZilla Server"

echo install crond
"%1\bin\crond\cron.exe" -q -install
echo Starting Cron Service
C:\Windows\System32\net.exe start cron

echo Installing hMailServer...
rem timeout /t 60
IF EXIST "%PROGRAMFILES(X86)%" (
%2\hMailServer-5.7.0-B2604-x64.exe /DIR="%1\bin\hmailserver" /VERYSILENT
) ELSE (
%2\hMailServer-5.6.7-B2425.exe /DIR="%1\bin\hmailserver" /VERYSILENT
)
echo end Installing hMailServer...
rem timeout /t 60

echo Starting hMailServer
C:\Windows\System32\net.exe stop hMailServer
C:\Windows\System32\net.exe start hMailServer
rem timeout /t 60


echo Installing BIND9.9...


C:\Windows\System32\net.exe start | C:\Windows\System32\find.exe "named"
if ERRORLEVEL 1 sc create named binpath= %1\bin\bind\bin\named.exe DisplayName= "named" start= auto
C:\Windows\System32\net.exe start | C:\Windows\System32\find.exe "named"
if ERRORLEVEL 1 %DIR%\bind\bin\sc.exe create named binpath= %1\bin\bind\bin\named.exe DisplayName= "named" start= auto
echo Starting BIND
C:\Windows\System32\net.exe stop named
C:\Windows\System32\net.exe start named
rem timeout /t 60
echo Done installing Services!
echo All done!
rem pack install finish
rem continue panel install
cd %2\
%1\bin\7zip\7z.exe x %2\master.zip
rmdir /S /Q %2\Sentora-Windows-Upgrade-master\1.0.3\panel\upgrade
mkdir %1\panel
C:\Windows\System32\xcopy.exe %2\Sentora-Windows-Upgrade-master\1.0.3\panel %1\panel /s /e /h
rem pause
IF EXIST "%1\all_databases.sql" (
echo Restorinng Sentora database..
%1\bin\mysql\bin\mysql.exe -uroot < %2\Sentora-Windows-Upgrade-master\installer\{app}\bin\zpss\MySQL_User_Cleanup.sql
IF EXIST "%PROGRAMFILES(X86)%" (
%1\bin\php\php.exe %2\update.php %1 %2 %3 %4 %5 %6 32
) ELSE (
%1\bin\php\php.exe %2\update.php %1 %2 %3 %4 %5 %6 64
)
del %1\all_databases.sql
goto endconfigure
)
echo not update test
rem timeout /t 60
echo Importing Sentora database..
%1\bin\mysql\bin\mysql.exe -uroot < %2\Sentora-Windows-Upgrade-master\installer\{app}\bin\zpss\sentora_core.sql
echo Importing hmailserver database..
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BITHMAILDB) ELSE (GOTO 32BITHMAILDB)
:64BITHMAILDB
%1\bin\mysql\bin\mysql.exe -uroot < %2\Sentora-Windows-Upgrade-master\installer\{app}\bin\zpss\sentora_hmail64.sql
goto ENDHMAILDB
:32BITHMAILDB
%1\bin\mysql\bin\mysql.exe -uroot < %2\Sentora-Windows-Upgrade-master\installer\{app}\bin\zpss\sentora_hmail.sql
:ENDHMAILDB
echo Cleaning up MySQL users (securing MySQL server)..
%1\bin\mysql\bin\mysql.exe -uroot < %2\Sentora-Windows-Upgrade-master\installer\{app}\bin\zpss\MySQL_User_Cleanup.sql
md "%1\bin\hmailserver\"
md "%1\bin\hmailserver\bin\"
del "%1\bin\hmailserver\bin\hMailServer.ini"
%1\bin\php\php.exe %2\enviroment_configure.php %1 %2 %3 %4 %5 %6
del "%1\bin\hmailserver\bin\libmysql.dll"
copy "%1\bin\mysql\lib\libmysql.dll" "%1\bin\hmailserver\bin\"
echo end configure
:endconfigure
rem timeout /t 60
echo The installer will now finalise the install...
echo Restarting services..
echo Stopping Apache
C:\Windows\System32\net.exe stop Apache 
echo Starting Apache
C:\Windows\System32\net.exe start Apache
echo Stopping hMailServer
C:\Windows\System32\net.exe stop hMailServer
echo Starting hMailServer
C:\Windows\System32\net.exe start hMailServer
echo Stopping BIND
C:\Windows\System32\net.exe stop named
echo Starting BIND
C:\Windows\System32\net.exe start named

echo Running the daemon for the first time..
%1\bin\php\php.exe %1\panel\bin\daemon.php
echo Done!
rem timeout /t 60
%1\bin\php\php.exe %1/panel/bin/setzadmin --set %6
echo Password successfully set!
echo %6 >>c:\zpanel\login_details.txt

rem timeout /t 60

echo Cleaning up..
DEL %1\bin\zpss\*.bat /Q
DEL %1\bin\zpss\*.php /Q
DEL %1\configs\bind\zones\*.* /Q
echo install finish
C:\Windows\System32\net.exe start apache
rem timeout /t 60
exit

rem remove old and updated folder
rem timeout /t 60
goto dbupdate
)
:dbupdate
rem update.bat %1 %2
cd %2
rmdir /S /Q Apache24
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)
:64BIT
rem install Visual C++ redistributable 2005 2008 2011 2013 require for apache php and mysql
%2\vcredist5_x64.exe /q
%2\vcredist8_x64.exe /q /norestart
%2\vcredist11_x64.exe /q /norestart
%2\vcredist13_x64.exe /q /norestart
rem install microsoft net framework 3.5 and 4.5 require for hmailserver
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto W10
if "%version%" == "6.3" goto W8
if "%version%" == "6.2" goto W8
if "%version%" == "6.1" goto W7
if "%version%" == "6.0" goto W7
if "%version%" == "5.9" goto W7
if "%version%" == "5.8" goto W7
if "%version%" == "5.7" goto W7
if "%version%" == "5.6" goto W7
if "%version%" == "5.5" goto W7
if "%version%" == "5.4" goto W7
if "%version%" == "5.3" goto W7
if "%version%" == "5.2" goto W7
if "%version%" == "5.0" goto W7
if "%version%" == "5.0" goto W7
rem etc etc
endlocal
:W7
%2\dotnetfx35.exe /q /norestart
%2\NDP452-KB2901907-x86-x64-AllOS-ENU.exe /q /norestart
goto ENDNET
:W8
rem for windows 8 and 10 net framework 3.5 install online using dism
C:\Windows\System32\dism.exe /Online /Enable-Feature /FeatureName:NetFx3 /All
rem msu dependencie for windows 8 and windows server 2012
rem read https://github.com/Dravion/hmailserver/releases
mkdir %2\updates
rename %2\Windows8.1-KB2919442-x64.msu %2\updates\Windows8.1-KB2919442-x64.msu
rename %2\Windows8.1-KB2919355-x64.msu %2\updates\Windows8.1-KB2919355-x64.msu
C:\Windows\System32\dism.exe /online /add-package /packagepath:%2\updates
:W10
rem for windows 8 and 10 net framework 3.5 install online using dism
C:\Windows\System32\dism.exe /Online /Enable-Feature /FeatureName:NetFx3 /All
:ENDNET
%1\bin\7zip\7z.exe x httpd-2.4.38-win64-VC11.zip
cd %1\bin\php
%1\bin\7zip\7z.exe x %2\php-5.6.40-Win32-VC11-x64.zip
cd %2
rmdir /S /Q mysql-5.7.29-winx64
%1\bin\7zip\7z.exe x %2\mysql-5.7.29-winx64.zip
C:\Windows\System32\xcopy.exe /s /e /h %2\mysql-5.7.29-winx64 %1\bin\mysql
cd %1\bin\bind\bin\
%1\bin\7zip\7z.exe x %2\BIND9.14.8.x64.zip
cd %1\bin\cygtools
%1\bin\7zip\7z.exe x %2\cygtools-64bit.zip
GOTO END
:32BIT
%2\vcredist5_x86.exe /q
%2\vcredist8_x86.exe /q /norestart
%2\vcredist11_x86.exe /q /norestart
%2\vcredist13_x86.exe /q /norestart
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto W10
if "%version%" == "6.3" goto W8
if "%version%" == "6.2" goto W8
if "%version%" == "6.1" goto W7
if "%version%" == "6.0" goto W7
if "%version%" == "5.9" goto W7
if "%version%" == "5.8" goto W7
if "%version%" == "5.7" goto W7
if "%version%" == "5.6" goto W7
if "%version%" == "5.5" goto W7
if "%version%" == "5.4" goto W7
if "%version%" == "5.3" goto W7
if "%version%" == "5.2" goto W7
if "%version%" == "5.0" goto W7
if "%version%" == "5.0" goto W7
rem etc etc
endlocal
:W7
%2\dotnetfx35.exe /q /norestart
%2\NDP452-KB2901907-x86-x64-AllOS-ENU.exe /q /norestart
goto ENDNET
:W8
rem for windows 8 and 10 net framework 3.5 install online using dism
C:\Windows\System32\dism.exe /Online /Enable-Feature /FeatureName:NetFx3 /All
rem msu dependencie for windows 8 and windows server 2012
rem read https://github.com/Dravion/hmailserver/releases
rem not require en 32 bit version
rem dism /online /add-package /packagepath:%2\updates
:W10
rem for windows 8 and 10 net framework 3.5 install online using dism
C:\Windows\System32\dism.exe /Online /Enable-Feature /FeatureName:NetFx3 /All
:ENDNET
%1\bin\7zip\7z.exe x httpd-2.4.38-win32-VC11.zip
cd %1\bin\php
%1\bin\7zip\7z.exe x %2\php-5.6.40-Win32-VC11-x86.zip
cd %2
rmdir /S /Q mysql-5.7.29-win32
%1\bin\7zip\7z.exe x %2\mysql-5.7.29-win32.zip
C:\Windows\System32\xcopy.exe /s /e /h %2\mysql-5.7.29-win32 %1\bin\mysql
cd %1\bin\bind\bin\
%1\bin\7zip\7z.exe x %2\BIND9.14.8.x86.zip
cd %1\bin\cygtools
%1\bin\7zip\7z.exe x %2\cygtools-32bit.zip
GOTO END
:END
cd %2

C:\Windows\System32\xcopy.exe /s /e /h %2\Apache24 %1\bin\apache
%1\bin\php\php.exe %2\install.php %1 %2 %3 %4 %5 %6
echo finish configure
rem timeout /t 60
%1\bin\mysql\bin\mysqld.exe --defaults-file="%1\bin\mysql\my.ini" --console --initialize-insecure=on --lower-case-table-names=1
echo finish init mysql
rem timeout /t 60
echo Installing MySQL Service..
%1\bin\mysql\bin\mysqld.exe --install
echo Starting MySQL Service..
C:\Windows\System32\net.exe start MySQL

echo Installing Apache HTTPd Service..
%1\bin\apache\bin\httpd.exe -k install -n Apache
echo Starting Apache HTTPd service..
C:\Windows\System32\net.exe start Apache

echo Installing Filezilla service..
"%1\bin\filezilla\Filezilla server.exe" /install auto
echo Starting Filezilla service..
C:\Windows\System32\net.exe start "FileZilla Server"

echo install crond
"%1\bin\crond\cron.exe" -q -install
echo Starting Cron Service
C:\Windows\System32\net.exe start cron

echo Installing hMailServer...
IF EXIST "%PROGRAMFILES(X86)%" (
%2\hMailServer-5.7.0-B2519-x64.exe /DIR="%1\bin\hmailserver" /VERYSILENT
) ELSE (
%2\hMailServer-5.6.7-B2425.exe /DIR="%1\bin\hmailserver" /VERYSILENT
)

echo Starting hMailServer
C:\Windows\System32\net.exe stop hMailServer
C:\Windows\System32\net.exe start hMailServer

echo Installing BIND9.9...


C:\Windows\System32\net.exe start | C:\Windows\System32\find.exe "named"
if ERRORLEVEL 1 sc create named binpath= %1\bin\bind\bin\named.exe DisplayName= "named" start= auto
C:\Windows\System32\net.exe start | C:\Windows\System32\find.exe "named"
if ERRORLEVEL 1 %DIR%\bind\bin\sc.exe create named binpath= %1\bin\bind\bin\named.exe DisplayName= "named" start= auto
echo Starting BIND
C:\Windows\System32\net.exe stop named
C:\Windows\System32\net.exe start named
rem timeout /t 60
echo Done installing Services!
echo All done!
rem pack install finish
rem continue panel install
cd %2\
%1\bin\7zip\7z.exe x %2\master.zip
rmdir /S /Q %2\Sentora-Windows-Upgrade-master\1.0.3\panel\upgrade
mkdir %1\panel
C:\Windows\System32\xcopy.exe %2\Sentora-Windows-Upgrade-master\1.0.3\panel %1\panel /s /e /h
rem timeout /t 60
IF EXIST "%1\all_databases.sql" (
echo Restorinng Sentora database..
%1\bin\mysql\bin\mysql.exe -uroot < %2\Sentora-Windows-Upgrade-master\installer\{app}\bin\zpss\MySQL_User_Cleanup.sql
IF EXIST "%PROGRAMFILES(X86)%" (
%1\bin\php\php.exe %2\update.php %1 %2 %3 %4 %5 %6 32
) ELSE (
%1\bin\php\php.exe %2\update.php %1 %2 %3 %4 %5 %6 64
)
del %1\all_databases.sql
goto endconfigure
)
echo not update test
rem timeout /t 60
echo Importing Sentora database..
%1\bin\mysql\bin\mysql.exe -uroot < %2\Sentora-Windows-Upgrade-master\installer\{app}\bin\zpss\sentora_core.sql
echo Importing hmailserver database..
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BITHMAILDB) ELSE (GOTO 32BITHMAILDB)
:64BITHMAILDB
%1\bin\mysql\bin\mysql.exe -uroot < %2\Sentora-Windows-Upgrade-master\installer\{app}\bin\zpss\sentora_hmail64.sql
goto ENDHMAILDB
:32BITHMAILDB
%1\bin\mysql\bin\mysql.exe -uroot < %2\Sentora-Windows-Upgrade-master\installer\{app}\bin\zpss\sentora_hmail.sql
:ENDHMAILDB
echo Cleaning up MySQL users (securing MySQL server)..
%1\bin\mysql\bin\mysql.exe -uroot < %2\Sentora-Windows-Upgrade-master\installer\{app}\bin\zpss\MySQL_User_Cleanup.sql
md "%1\bin\hmailserver\"
md "%1\bin\hmailserver\bin\"
del "%1\bin\hmailserver\bin\hMailServer.ini"
%1\bin\php\php.exe %2\enviroment_configure.php %1 %2 %3 %4 %5 %6
del "%1\bin\hmailserver\bin\libmysql.dll"
copy "%1\bin\mysql\lib\libmysql.dll" "%1\bin\hmailserver\bin\"
echo end configure
:endconfigure
rem timeout /t 60
echo The installer will now finalise the install...
echo Restarting services..
echo Stopping Apache
C:\Windows\System32\net.exe stop Apache 
echo Starting Apache
C:\Windows\System32\net.exe start Apache
echo Stopping hMailServer
C:\Windows\System32\net.exe stop hMailServer
echo Starting hMailServer
C:\Windows\System32\net.exe start hMailServer
echo Stopping BIND
C:\Windows\System32\net.exe stop named
echo Starting BIND
C:\Windows\System32\net.exe start named

echo Running the daemon for the first time..
%1\bin\php\php.exe %1\panel\bin\daemon.php
echo Done!
rem timeout /t 60
%1\bin\php\php.exe %1/panel/bin/setzadmin --set %6
echo Password successfully set!
echo %6 >>c:\zpanel\login_details.txt

rem timeout /t 60

echo Cleaning up..
DEL %1\bin\zpss\*.bat /Q
DEL %1\bin\zpss\*.php /Q
DEL %1\configs\bind\zones\*.* /Q
echo install finish
C:\Windows\System32\net.exe start apache
rem timeout /t 60
exit
