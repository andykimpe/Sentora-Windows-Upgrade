#include <C:\Program Files (x86)\Inno Download Plugin\idp.iss>

[Setup]
AppName=Sentora For Windows
AppVersion=1.0.3
AppId={{21544337-695B-4B0E-827F-7E917B8B18C5}
AppPublisher=Sentora Project
AppPublisherURL=http://www.sentora.com/
AppSupportURL=http://forums.sentora.com/
AppUpdatesURL=http://www.sentora.com/
DefaultDirName=c:\zpanel
DefaultGroupName=Sentora
OutputBaseFilename=Sentora-1_0_3
Compression=lzma2/ultra
DisableDirPage=no
DisableProgramGroupPage=yes
LicenseFile=embedded\License.rtf
InfoBeforeFile=embedded\InfoBefore.txt
WizardImageFile=embedded\WizardImage0.bmp
WizardSmallImageFile=embedded\WizardSmallImage0.bmp
DisableWelcomePage=False
AllowCancelDuringInstall=False
ChangesEnvironment=True
SetupIconFile=embedded\Sentora.ico
InternalCompressLevel=ultra
MinVersion=0,6.0sp2

[Files]
Source: "{tmp}\install_script.iss"; Flags: dontcopy
Source: "{app}\bin\7zip\7z,1.dll"; DestDir: "{app}\bin\7zip"; DestName: "7z.dll"; Flags: ignoreversion 64bit
Source: "{app}\bin\7zip\7z,1.exe"; DestDir: "{app}\bin\7zip"; DestName: "7z.exe"; Flags: ignoreversion 64bit
Source: "{app}\bin\7zip\7-zip,1.dll"; DestDir: "{app}\bin\7zip"; DestName: "7-zip.dll"; Flags: ignoreversion 64bit
Source: "{app}\bin\7zip\7-zip32.dll"; DestDir: "{app}\bin\7zip"; DestName: "7-zip32.dll"; Flags: ignoreversion 64bit
Source: "{app}\bin\7zip\7z,2.dll"; DestDir: "{app}\bin\7zip"; DestName: "7z.dll"; Flags: ignoreversion 32bit
Source: "{app}\bin\7zip\7z,2.exe"; DestDir: "{app}\bin\7zip"; DestName: "7z.exe"; Flags: ignoreversion 32bit
Source: "{app}\bin\7zip\7-zip,2.dll"; DestDir: "{app}\bin\7zip"; DestName: "7-zip.dll"; Flags: ignoreversion 32bit
Source: "{app}\bin\crond\crons.exe"; DestDir: "{app}\bin\crond"; Flags: ignoreversion
Source: "{app}\bin\filezilla\FileZilla Server Interface.exe"; DestDir: "{app}\bin\filezilla"; Flags: ignoreversion
Source: "{app}\bin\filezilla\FileZilla Server Interface.xml"; DestDir: "{app}\bin\filezilla"; Flags: ignoreversion
Source: "{app}\bin\filezilla\FileZilla server.exe"; DestDir: "{app}\bin\filezilla"; Flags: ignoreversion
Source: "{app}\bin\filezilla\FileZilla Server.xml"; DestDir: "{app}\bin\filezilla"; Flags: ignoreversion
Source: "{app}\bin\filezilla\FzGSS.dll"; DestDir: "{app}\bin\filezilla"; Flags: ignoreversion
Source: "{app}\bin\filezilla\libeay32.dll"; DestDir: "{app}\bin\filezilla"; Flags: ignoreversion
Source: "{app}\bin\filezilla\ssleay32.dll"; DestDir: "{app}\bin\filezilla"; Flags: ignoreversion
Source: "{app}\bin\hmailserver\INSTALL\zpanel_hmail.sql"; DestDir: "{app}\bin\hmailserver\INSTALL"; Flags: ignoreversion
Source: "{app}\bin\mysql\my-sentora.ini"; DestDir: "{app}\bin\mysql"; Flags: ignoreversion
Source: "{app}\bin\php\ext\php_suhosin,1.dll"; DestDir: "{app}\bin\php\ext"; DestName: "php_suhosin.dll"; Flags: ignoreversion 64bit
Source: "{app}\bin\php\ext\php_suhosin,2.dll"; DestDir: "{app}\bin\php\ext"; DestName: "php_suhosin.dll"; Flags: ignoreversion 32bit
Source: "{app}\bin\sendmail\libeay32.dll"; DestDir: "{app}\bin\sendmail"; Flags: ignoreversion
Source: "{app}\bin\sendmail\sendmail.exe"; DestDir: "{app}\bin\sendmail"; Flags: ignoreversion
Source: "{app}\bin\sendmail\sendmail.ini"; DestDir: "{app}\bin\sendmail"; Flags: ignoreversion
Source: "{app}\bin\sendmail\ssleay32.dll"; DestDir: "{app}\bin\sendmail"; Flags: ignoreversion
Source: "{app}\bin\wget\libeay32.dll"; DestDir: "{app}\bin\wget"; Flags: ignoreversion
Source: "{app}\bin\wget\libiconv2.dll"; DestDir: "{app}\bin\wget"; Flags: ignoreversion
Source: "{app}\bin\wget\libintl3.dll"; DestDir: "{app}\bin\wget"; Flags: ignoreversion
Source: "{app}\bin\wget\libssl32.dll"; DestDir: "{app}\bin\wget"; Flags: ignoreversion
Source: "{app}\bin\wget\wget.exe"; DestDir: "{app}\bin\wget"; Flags: ignoreversion
Source: "{app}\bin\zpss\setroute.exe"; DestDir: "{app}\bin\zpss"; Flags: ignoreversion
Source: "{app}\bin\zpss\icons\addons.ico"; DestDir: "{app}\bin\zpss\icons"; Flags: ignoreversion
Source: "{app}\bin\zpss\icons\backups.ico"; DestDir: "{app}\bin\zpss\icons"; Flags: ignoreversion
Source: "{app}\bin\zpss\icons\bugs.ico"; DestDir: "{app}\bin\zpss\icons"; Flags: ignoreversion
Source: "{app}\bin\zpss\icons\forums.ico"; DestDir: "{app}\bin\zpss\icons"; Flags: ignoreversion
Source: "{app}\bin\zpss\icons\hostdata.ico"; DestDir: "{app}\bin\zpss\icons"; Flags: ignoreversion
Source: "{app}\bin\zpss\icons\internet.ico"; DestDir: "{app}\bin\zpss\icons"; Flags: ignoreversion
Source: "{app}\bin\zpss\icons\logs.ico"; DestDir: "{app}\bin\zpss\icons"; Flags: ignoreversion
Source: "{app}\bin\zpss\icons\runtasks.ico"; DestDir: "{app}\bin\zpss\icons"; Flags: ignoreversion

[Dirs]
Name: "{app}\backups\"; 
Name: "{app}\bin\apache\logs\";
Name: "{app}\bin\apache\conf\"; 
Name: "{app}\bin\mysql\";
Name: "{app}\bin\bind\bin\";  
Name: "{app}\bin\bind\etc\"; 
Name: "{app}\bin\bind\zones\"; 
Name: "{app}\bin\php\extras\"; 
Name: "{app}\configs\"; 
Name: "{app}\hostdata\zadmin\public_html\"; 
Name: "{app}\logs\apache\"; 
Name: "{app}\logs\bind\"; 
Name: "{app}\logs\hmailserver\"; 
Name: "{app}\logs\mysql\"; 
Name: "{app}\logs\php\"; 
Name: "{app}\logs\sendmail\"; 
Name: "{app}\panel\"; 
Name: "{app}\temp\"; 

[Run]
;PATH Variable installed and removed by innosetup ussing registery key and pascal code
;Filename: "{app}\bin\zpss\register_paths.bat"; Flags: runhidden; StatusMsg: "Registering application paths"
;install_services.bat updated for ussing parameter
Filename: "{tmp}\install_services.bat"; Parameters: "{app} {tmp} ""{code:GetParam1}"" ""{code:GetParam2}"" ""{code:GetParam3}"" ""{code:GetParam4}"""; StatusMsg: "{cm:Installandregisterserver}"
;Flags: runhidden;

[UninstallRun]
Filename: "{win}\System32\net.exe"; StatusMsg: "Stoping Apache Service"; Parameters: "stop apache"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\sc.exe"; StatusMsg: "Removing Apache Service"; Parameters: "delete apache"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\net.exe"; StatusMsg: "Stoping MySQL Service"; Parameters: "stop MySQL"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\sc.exe"; StatusMsg: "Removing MySQL Service"; Parameters: "delete MySQL"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\net.exe"; StatusMsg: "Stoping FileZilla Server Service"; Parameters: "stop ""FileZilla Server"""; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\sc.exe"; Parameters: "delete ""FileZilla Server"""; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\net.exe"; Parameters: "stop cron"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\sc.exe"; Parameters: "delete cron"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\net.exe"; Parameters: "stop hMailServer"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\sc.exe"; Parameters: "delete hMailServer"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\net.exe"; Parameters: "stop named"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\sc.exe"; Parameters: "delete named"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\cmd.exe"; Parameters: "/c 'timeout /t 30"; WorkingDir: "{win}\System32"; Flags: runhidden


[Icons]
Name: "{group}\Support\ZPanel website"; Filename: "http://www.zpanelcp.com/"; IconFilename: "{app}\bin\zpss\icons\internet.ico"; 
Name: "{group}\Support\ZPanel forums"; Filename: "http://forums.zpanelcp.com/"; IconFilename: "{app}\bin\zpss\icons\forums.ico"; 
Name: "{group}\Support\ZPanel bug database"; Filename: "http://bugs.zpanelcp.com/"; IconFilename: "{app}\bin\zpss\icons\bugs.ico"; 
Name: "{group}\Management\hMailServer Console"; Filename: "{app}\bin\hmailserver\Bin\hMailAdmin.exe"; 
Name: "{group}\Management\FileZilla Console"; Filename: "{app}\bin\filezilla\FileZilla Server Interface.exe"; 
Name: "{group}\Management\Apache Monitor"; Filename: "{app}\bin\apache\bin\ApacheMonitor.exe"; 
Name: "{group}\Logs"; Filename: "{app}\logs"; IconFilename: "{app}\bin\zpss\icons\logs.ico"; 
Name: "{group}\Backups"; Filename: "{app}\backups"; IconFilename: "{app}\bin\zpss\icons\backups.ico"; 
Name: "{group}\Hostdata"; Filename: "{app}\hostdata"; IconFilename: "{app}\bin\zpss\icons\hostdata.ico"; 
Name: "{group}\Tasks\Run ZPanel Daemon"; Filename: "{app}\bin\php\php.exe"; Parameters: "{app}\panel\bin\daemon.php"; IconFilename: "{app}\bin\zpanel\icons\runtasks.ico"; 

[UninstallDelete]
Type: filesandordirs; Name: "{app}\bin\*"; 
Type: filesandordirs; Name: "{app}\*"; 

[CustomMessages]
english.NameAndVersion=%1 version %2
english.AdditionalIcons=Additional icons:
english.CreateDesktopIcon=Create a &desktop icon
english.CreateQuickLaunchIcon=Create a &Quick Launch icon
english.ProgramOnTheWeb=%1 on the Web
english.UninstallProgram=Uninstall %1
english.LaunchProgram=Launch %1
english.AssocFileExtension=&Associate %1 with the %2 file extension
english.AssocingFileExtension=Associating %1 with the %2 file extension...
english.Installandregisterserver=Installing services and registering applications
french.Installandregisterserver=Installation de services et enregistrement de l'applications
english.IDP_Downloading=Downloading...
french.IDP_Downloading=Telechargement...

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"; LicenseFile: "embedded\License-french.rtf"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "icelandic"; MessagesFile: "compiler:Languages\Icelandic.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Registry]
; Imported Registry File: "C:\zpanel\bin\bind\bin\bind.reg"
Root: "HKLM"; Subkey: "SOFTWARE\ISC\BIND"; ValueType: string; ValueName: "InstallDir"; ValueData: "{app}\bin\bind"; Flags: uninsdeletekey
;configuration for PATH Variable
Root: HKLM; SubKey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment\"; ValueType: string; ValueName: "Path"; ValueData: "{reg:HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\,Path};{app}\bin\apache\bin;{app}\bin\mysql\bin;{app}\bin\php;{app}\bin\wget;{app}\bin\bind\bin"

[Code]
Procedure URLLabelOnClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
  ShellExec('open', 'http://www.sentora.org', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;


var
  PageParam: TInputQueryWizardPage;

// Créer les Pages Personnalisées
procedure CreateTheWizardPages;

begin
// Create the page
PageParam := CreateInputQueryPage(wpInfoBefore,
  ExpandConstant('Configure your Sentora Installation'), ExpandConstant('Information of your installation'),
  ExpandConstant('please fill in the information requested to configure your Setora installation'));

// Add items (False means it's not a password edit)
    PageParam.Add(ExpandConstant('Your Full name:'), False);
    PageParam.Add(ExpandConstant('Your Email:'), False);
    PageParam.Values[0]:= '';
    PageParam.Values[1]:= '';
end;

// Fonctions de retour
function GetParam1(Param: String): String;
begin
    Result := PageParam.Values[0];
end;
function GetParam2(Param: String): String;
begin
    Result := PageParam.Values[1];
end;


var
  PageParamm: TInputQueryWizardPage;

procedure CreateTheWizardPages1;
begin
// Create the page
PageParamm := CreateInputQueryPage(wpUserInfo,
  ExpandConstant('Configure your Sentora Installation'), ExpandConstant('Information of your installation'),
  ExpandConstant('please fill in the information requested to configure your Setora installation'));

// Add items (False means it's not a password edit)
    PageParamm.Add(ExpandConstant('Your FQDN:'), False);
    PageParamm.Add(ExpandConstant('Password For Zadmin:'), False);
    PageParamm.Values[0]:= '';
    PageParamm.Values[1]:= '';
end;

// Fonctions de retour
function GetParam3(Paramm: String): String;
begin
    Result := PageParamm.Values[0];
end;
function GetParam4(Paramm: String): String;
begin
    Result := PageParamm.Values[1];
end;
//code for configure PATH Variable
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var
  Path, AppDir: string;
  Index: Integer;
begin
  if CurUninstallStep = usUninstall then
  begin
    if RegQueryStringValue(HKEY_LOCAL_MACHINE,
      'SYSTEM\CurrentControlSet\Control\Session Manager\Environment\',
      'Path', Path) then
    begin
      AppDir := ExpandConstant('{app}\bin\apache\bin;{app}\bin\mysql\bin;{app}\bin\php;{app}\bin\wget;{app}\bin\bind\bin');
      Index := Pos(AppDir, Path);
      Delete(Path, Index-1, Length(AppDir)+1);
      RegWriteStringValue(HKEY_LOCAL_MACHINE,
        'SYSTEM\CurrentControlSet\Control\Session Manager\Environment\',
        'Path', Path);
    end;
  end;
end;
//end path config
procedure InitializeWizard();
var
  URLLabel: TNewStaticText;
begin
  URLLabel := TNewStaticText.Create(WizardForm);
  URLLabel.Caption := 'www.sentora.org';
  URLLabel.Cursor := crHand;
  URLLabel.OnClick := @URLLabelOnClick;
  URLLabel.Parent := WizardForm;
  { Alter Font *after* setting Parent so the correct defaults are inherited first }
  URLLabel.Font.Style := URLLabel.Font.Style + [fsUnderline];
  URLLabel.Font.Color := clBlue;
  URLLabel.Top := WizardForm.ClientHeight - URLLabel.Height - 15;
  URLLabel.Left := ScaleX(20);
//end;
//begin
  CreateTheWizardPages;
  CreateTheWizardPages1;
//end;
begin
if FileExists('C:\zpanel\panel\cnf\db.php') then
//if FileExists(ExpandConstant('C:\zpanel\panel\cnf\db.php')) then
	idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/update/update.bat', ExpandConstant('{tmp}\update.bat'));
	idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/update/update2.bat', ExpandConstant('{tmp}\update2.bat'));
			idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/update/update.php', ExpandConstant('{tmp}\update.php'));
			idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/update/update2.php', ExpandConstant('{tmp}\update2.php'));
			idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/update/update.sql', ExpandConstant('{tmp}\update.sql'));
			idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/update/db.php', ExpandConstant('{tmp}\db.php'));
end;
begin
  if IsWin64 then
    idpAddFile('https://home.apache.org/~steffenal/VC11/binaries/httpd-2.4.38-win64-VC11.zip', ExpandConstant('{tmp}\httpd-2.4.38-win64-VC11.zip'))
  else
    idpAddFile('https://home.apache.org/~steffenal/VC11/binaries/httpd-2.4.38-win32-VC11.zip', ExpandConstant('{tmp}\httpd-2.4.38-win32-VC11.zip'));
end;
begin
  if IsWin64 then
    idpAddFile('https://download.microsoft.com/download/4/F/C/4FC241D7-EF92-46FA-80DE-3DF5841CE00E/vcredist_x64.exe', ExpandConstant('{tmp}\vcredist5_x64.exe'))
  else
    idpAddFile('https://download.microsoft.com/download/4/F/C/4FC241D7-EF92-46FA-80DE-3DF5841CE00E/vcredist_x86.exe', ExpandConstant('{tmp}\vcredist5_x86.exe'));
end;
begin
  if IsWin64 then
    idpAddFile('https://download.microsoft.com/download/f/6/9/f6916186-6567-40fe-8d4c-ea4b29c84cbf/vcredist_x64.exe', ExpandConstant('{tmp}\vcredist8_x64.exe'))
  else
    idpAddFile('https://download.microsoft.com/download/f/5/a/f5a61e7a-ddab-43f6-b3eb-0f329692472e/vcredist_x86.exe', ExpandConstant('{tmp}\vcredist8_x86.exe'));
end;
begin
  if IsWin64 then
    idpAddFile('https://download.microsoft.com/download/D/3/B/D3B72629-7D95-49ED-A4EC-7FF105754124/VSU4/vcredist_x64.exe', ExpandConstant('{tmp}\vcredist11_x64.exe'))
  else
    idpAddFile('https://download.microsoft.com/download/D/3/B/D3B72629-7D95-49ED-A4EC-7FF105754124/VSU4/vcredist_x86.exe', ExpandConstant('{tmp}\vcredist11_x86.exe'));
end;


begin
  if IsWin64 then
    idpAddFile('https://download.microsoft.com/download/A/4/D/A4D9F1D3-6449-49EB-9A6E-902F61D8D14B/vcredist_x64.exe', ExpandConstant('{tmp}\vcredist13_x64.exe'))
  else
    idpAddFile('https://download.microsoft.com/download/A/4/D/A4D9F1D3-6449-49EB-9A6E-902F61D8D14B/vcredist_x86.exe', ExpandConstant('{tmp}\vcredist13_x86.exe'));
end;


begin
  if IsWin64 then
    idpAddFile('https://windows.php.net/downloads/releases/archives/php-5.6.40-Win32-VC11-x64.zip', ExpandConstant('{tmp}\php-5.6.40-Win32-VC11-x64.zip'))
  else
    idpAddFile('https://windows.php.net/downloads/releases/archives/php-5.6.40-Win32-VC11-x86.zip', ExpandConstant('{tmp}\php-5.6.40-Win32-VC11-x86.zip'));
end;
begin
  if IsWin64 then
    idpAddFile('https://downloads.mysql.com/archives/get/p/23/file/mysql-5.7.29-winx64.zip', ExpandConstant('{tmp}\mysql-5.7.29-winx64.zip'))
  else
    idpAddFile('https://downloads.mysql.com/archives/get/p/23/file/mysql-5.7.29-win32.zip', ExpandConstant('{tmp}\mysql-5.7.29-win32.zip'));
end;
begin
  if IsWin64 then
    idpAddFile('https://downloads.isc.org/isc/bind9/9.14.8/BIND9.14.8.x64.zip', ExpandConstant('{tmp}\BIND9.14.8.x64.zip'))
  else
    idpAddFile('https://downloads.isc.org/isc/bind9/9.14.8/BIND9.14.8.x86.zip', ExpandConstant('{tmp}\BIND9.14.8.x86.zip'));
end;
    idpAddFile('https://www.hmailserver.com/files/hMailServer-5.3.3-B1879.exe', ExpandConstant('{tmp}\hMailServer-5.3.3-B1879.exe'));
    idpAddFile('http://download.microsoft.com/download/2/0/E/20E90413-712F-438C-988E-FDAA79A8AC3D/dotnetfx35.exe', ExpandConstant('{tmp}\dotnetfx35.exe'));
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/install/install_services.bat', ExpandConstant('{tmp}\install_services.bat'));
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/install/install.php', ExpandConstant('{tmp}\install.php'));
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/install/enviroment_configure.php', ExpandConstant('{tmp}\enviroment_configure.php'));

    idpDownloadAfter(wpReady);
end;
