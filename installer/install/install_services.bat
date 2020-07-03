@echo off
rem %1 = install dir
rem %2 = temp dir
echo install dir %1
echo temp dir %2
echo your_full_name %3
echo your_email %4
echo your_fqdn %5
echo password_for_zadmin %6
rem disable Windows Firewall
NetSh Advfirewall set allprofiles state off
IF EXIST "%2\update.bat" (
echo "update" > %1\update
)
cd %2
rmdir /S /Q Apache24
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)
:64BIT
%2\vcredist5_x64.exe /q
%2\vcredist8_x64.exe /q /norestart
%2\vcredist11_x64.exe /q /norestart
%2\vcredist13_x64.exe /q /norestart
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto W810
if "%version%" == "6.3" goto W810
if "%version%" == "6.2" goto W810
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
goto ENDNET
:W810
DISM /Online /Enable-Feature /FeatureName:NetFx3 /All
:ENDNET
%1\bin\7zip\7z.exe x httpd-2.4.38-win64-VC11.zip
cd %1\bin\php
%1\bin\7zip\7z.exe x %2\php-5.6.40-Win32-VC11-x64.zip
cd %2
rmdir /S /Q mysql-5.7.29-winx64
%1\bin\7zip\7z.exe x %2\mysql-5.7.29-winx64.zip
xcopy /s /e /h %2\mysql-5.7.29-winx64 %1\bin\mysql
cd %1\bin\bind\bin\
%1\bin\7zip\7z.exe x %2\BIND9.14.8.x64.zip
cd %1\bin\cygtools
%1\bin\7zip\7z.exe x %2\cygtools-64bit.zip
GOTO END
:32BIT
%2\vcredist5_x86.exe /qn
%2\vcredist8_x86.exe /q /norestart
%2\vcredist11_x86.exe /q /norestart
%2\vcredist13_x86.exe /q /norestart
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto W810
if "%version%" == "6.3" goto W810
if "%version%" == "6.2" goto W810
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
goto ENDNET
:W810
DISM /Online /Enable-Feature /FeatureName:NetFx3 /All
:ENDNET
%1\bin\7zip\7z.exe x httpd-2.4.38-win32-VC11.zip
cd %1\bin\php
%1\bin\7zip\7z.exe x %2\php-5.6.40-Win32-VC11-x86.zip
cd %2
rmdir /S /Q mysql-5.7.29-win32
%1\bin\7zip\7z.exe x %2\mysql-5.7.29-win32.zip
xcopy /s /e /h %2\mysql-5.7.29-win32 %1\bin\mysql
cd %1\bin\bind\bin\
%1\bin\7zip\7z.exe x %2\BIND9.14.8.x86.zip
cd %1\bin\cygtools
%1\bin\7zip\7z.exe x %2\cygtools-32bit.zip
GOTO END
:END
cd %2

xcopy /s /e /h %2\Apache24 %1\bin\apache
%1\bin\php\php.exe %2\install.php %1 %2 %3 %4 %5 %6
echo finish configure
rem pause
%1\bin\mysql\bin\mysqld.exe --defaults-file="%1\bin\mysql\my.ini" --console --initialize-insecure=on --lower-case-table-names=1
echo finish init mysql
rem pause
echo Installing MySQL Service..
%1\bin\mysql\bin\mysqld.exe --install
echo Starting MySQL Service..
net start MySQL

echo Installing Apache HTTPd Service..
%1\bin\apache\bin\httpd.exe -k install -n Apache
echo Starting Apache HTTPd service..
net start Apache

echo Installing Filezilla service..
"%1\bin\filezilla\Filezilla server.exe" /install auto
echo Starting Filezilla service..
net start "FileZilla Server"

echo install crond
"%1\bin\crond\crons.exe" /install
echo Creating crontab file in 'C:\WINDOWS\System32'
COPY "%1\bin\crond\temp_crontab.txt" "C:\WINDOWS\System32\crontab"
echo Starting Cron Service
net start "Cron Service"


echo Installing hMailServer...

%2\hMailServer-5.3.3-B1879.exe /DIR="%1\bin\hmailserver" /VERYSILENT
echo Starting hMailServer
net stop hMailServer
net start hMailServer

echo Installing BIND9.9...


net start | find "named"
if ERRORLEVEL 1 sc create named binpath= %1\bin\bind\bin\named.exe DisplayName= "named" start= auto
net start | find "named"
if ERRORLEVEL 1 %DIR%\bind\bin\sc.exe create named binpath= %1\bin\bind\bin\named.exe DisplayName= "named" start= auto
echo Starting BIND
net stop named
net start named
rem pause
echo Done installing Services!
echo All done!
rem pack install finish
rem continue panel install
cd %2\
%1\bin\7zip\7z.exe x %2\master.zip
rmdir /S /Q %2\Sentora-Windows-Upgrade-master\1.0.3\panel\upgrade
mkdir %1\panel
xcopy %2\Sentora-Windows-Upgrade-master\1.0.3\panel %1\panel /s /e /h
echo Importing Sentoa database..
mysql -uroot < %1\bin\zpss\zpanel_core.sql
echo Cleaning up MySQL users (securing MySQL server)..
mysql -uroot < %1\bin\zpss\MySQL_User_Cleanup.sql
%1\bin\php\php.exe %2\enviroment_configure.php %1 %2 %3 %4 %5 %6
pause
exit
