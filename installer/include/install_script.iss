;inno download plugin
#include <C:\Program Files (x86)\Inno Download Plugin\idp.iss>
;inno download plugin translation
; Language files must be included after idp.iss and after [Languages] section
#include <idplang\czech.iss>
#include <idplang\german.iss>
#include <idplang\finnish.iss>
#include <idplang\french.iss>
#include <idplang\italian.iss>
#include <idplang\polish.iss>
#include <idplang\brazilianportuguese.iss>
#include <idplang\russian.iss>
#include <idplang\spanish.iss>

[Setup]
AppName={cm:Sentora_For_Windows}
AppVersion=1.0.3
AppId={{69FEC5A2-82E0-44CF-9E07-126EEFCD41F3}
AppPublisher=Sentora Project
AppPublisherURL=http://www.sentora.com/
AppSupportURL=http://forums.sentora.com/
AppUpdatesURL=http://www.sentora.com/
DefaultDirName=c:\sentora103
DefaultGroupName=Sentora
OutputBaseFilename=Sentora-1_0_3_b2-devel-not-use
Compression=lzma2/ultra
DisableDirPage=no
DisableProgramGroupPage=no
LicenseFile=embedded\License.rtf
InfoBeforeFile=embedded\InfoBefore.txt
WizardImageFile=embedded\WizardImage0.bmp
WizardSmallImageFile=embedded\WizardSmallImage0.bmp
DisableWelcomePage=False
AllowCancelDuringInstall=False
ChangesEnvironment=True
SetupIconFile=embedded\Sentora.ico
InternalCompressLevel=ultra
MinVersion=6.1sp1
ChangesAssociations=True

[Files]
Source: "{tmp}\install_script.iss"; Flags: dontcopy
Source: "{app}\bin\7zip\7z,1.dll"; DestDir: "{app}\bin\7zip"; DestName: "7z.dll"; Flags: 64bit
Source: "{app}\bin\7zip\7z,1.exe"; DestDir: "{app}\bin\7zip"; DestName: "7z.exe"; Flags: 64bit
Source: "{app}\bin\7zip\7-zip,1.dll"; DestDir: "{app}\bin\7zip"; DestName: "7-zip.dll"; Flags: 64bit
Source: "{app}\bin\7zip\7-zip32.dll"; DestDir: "{app}\bin\7zip"; DestName: "7-zip32.dll"; Flags: 64bit
Source: "{app}\bin\7zip\7z,2.dll"; DestDir: "{app}\bin\7zip"; DestName: "7z.dll"; Flags: 32bit
Source: "{app}\bin\7zip\7z,2.exe"; DestDir: "{app}\bin\7zip"; DestName: "7z.exe"; Flags: 32bit
Source: "{app}\bin\7zip\7-zip,2.dll"; DestDir: "{app}\bin\7zip"; DestName: "7-zip.dll"; Flags: 32bit
Source: "{app}\bin\crond\cron.exe"; DestDir: "{app}\bin\crond"; Flags: ignoreversion
Source: "{app}\bin\crond\cron.ini"; DestDir: "{app}\bin\crond"; Flags: ignoreversion
Source: "{app}\bin\crond\cron.tab"; DestDir: "{app}\bin\crond"; Flags: ignoreversion
Source: "{app}\bin\crond\etc\taskinfo.txt"; DestDir: "{app}\bin\crond"; Flags: ignoreversion
Source: "{app}\bin\filezilla\FileZilla Server Interface.exe"; DestDir: "{app}\bin\filezilla"; Flags: ignoreversion
Source: "{app}\bin\filezilla\FileZilla server.exe"; DestDir: "{app}\bin\filezilla"; Flags: ignoreversion
Source: "{app}\bin\filezilla\FzGSS.dll"; DestDir: "{app}\bin\filezilla"; Flags: ignoreversion
Source: "{app}\bin\filezilla\libeay32.dll"; DestDir: "{app}\bin\filezilla"; Flags: ignoreversion
Source: "{app}\bin\filezilla\ssleay32.dll"; DestDir: "{app}\bin\filezilla"; Flags: ignoreversion
Source: "{app}\bin\php\ext\php_suhosin,1.dll"; DestDir: "{app}\bin\php\ext"; DestName: "php_suhosin.dll"; Flags: 64bit
Source: "{app}\bin\php\ext\php_suhosin,2.dll"; DestDir: "{app}\bin\php\ext"; DestName: "php_suhosin.dll"; Flags: 32bit
Source: "{app}\bin\sendmail\libeay32.dll"; DestDir: "{app}\bin\sendmail"; Flags: ignoreversion
Source: "{app}\bin\sendmail\sendmail.exe"; DestDir: "{app}\bin\sendmail"; Flags: ignoreversion
Source: "{app}\bin\sendmail\ssleay32.dll"; DestDir: "{app}\bin\sendmail"; Flags: ignoreversion
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
Name: "{app}\logs\apache";
Name: "{app}\logs\bind"; 
Name: "{app}\logs\hmailserver"; 
Name: "{app}\logs\mysql"; 
Name: "{app}\logs\php"; 
Name: "{app}\logs\sendmail"; 
Name: "{app}\bin\apache\logs\";
Name: "{app}\bin\apache\conf\"; 
Name: "{app}\bin\mysql\data\";
Name: "{app}\bin\bind\bin\";  
Name: "{app}\bin\bind\etc\"; 
Name: "{app}\bin\bind\zones\"; 
Name: "{app}\bin\php\extras\"; 
Name: "{app}\configs\apache\"; 
Name: "{app}\bin\cygtools\etc\pki\ca-trust\source\anchors"; 
Name: "{app}\bin\cygtools\etc\pki\ca-trust\source\blacklist"; 
Name: "{app}\hostdata\zadmin\public_html\";
Name: "{app}\bin\hmailserver\";
Name: "{app}\logs\apache\"; 
Name: "{app}\logs\bind\"; 
Name: "{app}\logs\hmailserver\"; 
Name: "{app}\logs\mysql\"; 
Name: "{app}\logs\php\"; 
Name: "{app}\logs\sendmail\"; 
Name: "{app}\panel\cnf"; 
Name: "{app}\temp\"; 

[Run]
;PATH Variable installed and removed by innosetup ussing registery key and pascal code
;Filename: "{app}\bin\zpss\register_paths.bat"; Flags: runhidden; StatusMsg: "Registering application paths"
;install_services.bat updated for ussing parameter
Filename: "{tmp}\install_services.bat"; Parameters: "{app} {tmp} ""{code:GetParam1}"" {code:GetParam2} {code:GetParam3} {code:GetParam4} {code:GetParam5} {code:GetParam6}"; StatusMsg: "{cm:Installandregisterserver}"
; Flags: runhidden;

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
Filename: "{win}\System32\reg.exe"; Parameters: "delete HKEY_LOCAL_MACHINE\SOFTWARE\hMailServer /f"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\reg.exe"; Parameters: "delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\hMailServer /f"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\reg.exe"; Parameters: "delete HKEY_CURRENT_USER\Software\hMailServer /f"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\reg.exe"; Parameters: "HKEY_CURRENT_USER\SOFTWARE\WOW6432Node\hMailServer /f"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\reg.exe"; Parameters: "delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\hMailServer_is1 /f"; WorkingDir: "{win}\System32"; Flags: runhidden
Filename: "{win}\System32\reg.exe"; Parameters: "delete HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\hMailServer_is1 /f"; WorkingDir: "{win}\System32"; Flags: runhidden

[Icons]
Name: "{group}\Support\Sentora website"; Filename: "http://www.sentora.org/"; IconFilename: "{app}\bin\zpss\icons\internet.ico"; 
Name: "{group}\Support\Sentora forums"; Filename: "http://forums.sentora.org/"; IconFilename: "{app}\bin\zpss\icons\forums.ico"; 
Name: "{group}\Support\Sentora bug database"; Filename: "https://github.com/sentora/sentora-core/issues"; IconFilename: "{app}\bin\zpss\icons\bugs.ico"; 
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
;custom translation
;english original
en.Sentora_For_Windows=Sentora For Windows
en.Installandregisterserver=Installing services and registering applications
en.Configure_your_Sentora_Installation=Configure your Sentora Installation
en.Information_of_your_installation=Information of your installation
en.information_requested=please fill in the information requested to configure your Setora installation
en.Your_Full_Name=Your Full Name (last name and first name)
en.Your_Email=Your Email
en.Your_FQDN=Your FQDN (Full Qualified Domain Name)
en.Password_For_Zadmin=Password For Zadmin
en.Your_Sentora_install_Configure=Your Sentora install Configure

;french manual checked by andykimpe
fr.Sentora_For_Windows=Sentora Pour Windows
fr.Installandregisterserver=Installation des services et enregistrement de l'application
fr.Configure_your_Sentora_Installation=Configurtion de votre Installation de Sentora
fr.Information_of_your_installation=Informations de votre installation
fr.information_requested=veuillez remplir les informations demandées pour configurer votre installation Setora
fr.Your_Full_Name=Votre Nom Complet (Nom et Prénom)
fr.Your_Email=Votre Email
fr.Your_FQDN=Votre FQDN (Nom de Domaine Pleinement Qualifié)
fr.Password_For_Zadmin=Mot de Passe Zadmin
fr.Your_Sentora_install_Configure=Votre installation Sentora Configurer

; Armenian (google translate tranlation) fork for participate translation
; https://translate.google.com/?hl=en&sl=en&tl=hy&op=translate
ar.Sentora_For_Windows=Sentora Windows-ի համար
ar.Installandregisterserver=Ծառայությունների տեղադրում և հավելվածների գրանցում
ar.Configure_your_Sentora_Installation=Կարգավորեք ձեր Sentora տեղադրումը
ar.Information_of_your_installation=Տեղեկություններ ձեր տեղադրման մասին
ar.information_requested=խնդրում ենք լրացնել տեղեկատվությունը, որը պահանջվում է ձեր Setora-ի տեղադրումը կարգավորելու համար
ar.Your_Full_Name=Ձեր լրիվ անունը (ազգանունը և անունը)
ar.Your_Email=Քո էլէկտրոնային փոստը
ar.Your_FQDN=Ձեր FQDN (Լրիվ որակավորված տիրույթի անունը)
ar.Password_For_Zadmin=Գաղտնաբառ Zadmin-ի համար
ar.Your_Sentora_install_Configure=Ձեր Sentora-ի տեղադրման կարգավորումը

; Brazilian Portuguese (bing translate tranlation) fork for participate translation
; https://www.bing.com/translator?setlang=en&from=en&to=pt
pt_br.Sentora_For_Windows=Sentora para Windows
pt_br.Installandregisterserver=Instalando serviços e registrando aplicativos
pt_br.Configure_your_Sentora_Installation=Configure sua instalação do Sentora
pt_br.Information_of_your_installation=Informações da sua instalação
pt_br.information_requested=preencha as informações solicitadas para configurar sua instalação do Setora
pt_br.Your_Full_Name=Seu Nome Completo (sobrenome e nome)
pt_br.Your_Email=Seu e-mail
pt_br.Your_FQDN=Seu FQDN (Nome de Domínio Totalmente Qualificado)
pt_br.Password_For_Zadmin=Senha para Zadmin
pt_br.Your_Sentora_install_Configure=Sua instalação do Sentora Configure

; Catalan (google translate tranlation) fork for participate translation
; https://translate.google.com/?hl=en&sl=en&tl=ca&op=translate
ca.Sentora_For_Windows=Sentora per a Windows
ca.Installandregisterserver=Instal·lació de serveis i registre d'aplicacions
ca.Configure_your_Sentora_Installation=Configura la teva instal·lació de Sentora
ca.Information_of_your_installation=Informació de la seva instal·lació
ca.information_requested=ompliu la informació sol·licitada per configurar la vostra instal·lació de Setora
ca.Your_Full_Name=El teu nom complet (cognoms i nom)
ca.Your_Email=El teu email
ca.Your_FQDN=El vostre FQDN (nom de domini complet)
ca.Password_For_Zadmin=Contrasenya per a Zadmin
ca.Your_Sentora_install_Configure=La vostra instal·lació de Sentora Configura

; Corsican (google translate tranlation) fork for participate translation
; https://translate.google.com/?hl=en&sl=en&tl=co&op=translate
co.Sentora_For_Windows=Sentora per Windows
co.Installandregisterserver=Installazione di servizii è registrazione di applicazioni
co.Configure_your_Sentora_Installation=Configurate a vostra installazione Sentora
co.Information_of_your_installation=Informazioni di a vostra installazione
co.information_requested=compie l'infurmazioni dumandate per cunfigurà a vostra installazione Setora
co.Your_Full_Name=U vostru nome cumpletu (cognome è nome)
co.Your_Email=U vostru email
co.Your_FQDN=U vostru FQDN (Nome di duminiu cumpletu)
co.Password_For_Zadmin=Password per Zadmin
co.Your_Sentora_install_Configure=U vostru Sentora installate Configure

; Czech (google translate tranlation) fork for participate translation
; https://translate.google.com/?hl=en&sl=en&tl=cs&op=translate
cz.Sentora_For_Windows=Sentora pro Windows
cz.Installandregisterserver=Instalace služeb a registrace aplikací
cz.Configure_your_Sentora_Installation=Nakonfigurujte svou instalaci Sentora
cz.Information_of_your_installation=Informace o vaší instalaci
cz.information_requested=vyplňte prosím informace požadované pro konfiguraci vaší instalace Setora
cz.Your_Full_Name=Vaše celé jméno (příjmení a jméno)
cz.Your_Email=Tvůj e-mail
cz.Your_FQDN=Váš FQDN (úplný kvalifikovaný název domény)
cz.Password_For_Zadmin=Heslo pro Zadmin
cz.Your_Sentora_install_Configure=Vaše Sentora nainstalovat Configure

; Danish (google translate tranlation) fork for participate translation
; https://translate.google.com/?hl=en&sl=en&tl=da&op=translate
da.Sentora_For_Windows=Sentora til Windows
da.Installandregisterserver=Installation af tjenester og registrering af applikationer
da.Configure_your_Sentora_Installation=Konfigurer din Sentora-installation
da.Information_of_your_installation=Oplysninger om din installation
da.information_requested=udfyld venligst de nødvendige oplysninger for at konfigurere din Setora-installation
da.Your_Full_Name=Dit fulde navn (efternavn og fornavn)
da.Your_Email=Din email
da.Your_FQDN=Dit FQDN (fuldt kvalificeret domænenavn)
da.Password_For_Zadmin=Password For Zadmin
da.Your_Sentora_install_Configure=Din Sentora-installation Configure

; Dutch fork for participate translation
; https://translate.google.com/?hl=en&sl=en&tl=nl&op=translate
nl.Sentora_For_Windows=Sentora voor Windows
nl.Installandregisterserver=Services installeren en applicaties registreren
nl.Configure_your_Sentora_Installation=Configureer uw Sentora-installatie
nl.Information_of_your_installation=Informatie over uw installatie
nl.information_requested=vul de gevraagde informatie in om uw Setora-installatie te configureren
nl.Your_Full_Name=Uw volledige naam (achternaam en voornaam)
nl.Your_Email=Jouw email
nl.Your_FQDN=Uw FQDN (Full Qualified Domain Name)
nl.Password_For_Zadmin=Wachtwoord voor Zadmin
nl.Your_Sentora_install_Configure=Uw Sentora-installatie configureren

; Finnish fork for participate translation
fi.Sentora_For_Windows=Sentora For Windows
fi.Installandregisterserver=Installing services and registering applications
fi.Configure_your_Sentora_Installation=Configure your Sentora Installation
fi.Information_of_your_installation=Information of your installation
fi.information_requested=please fill in the information requested to configure your Setora installation
fi.Your_Full_Name=Your Full Name (last name and first name)
fi.Your_Email=Your Email
fi.Your_FQDN=Your FQDN (Full Qualified Domain Name)
fi.Password_For_Zadmin=Password For Zadmin
fi.Your_Sentora_install_Configure=Your Sentora install Configure

; German fork for participate translation
de.Sentora_For_Windows=Sentora For Windows
de.Installandregisterserver=Installing services and registering applications
de.Configure_your_Sentora_Installation=Configure your Sentora Installation
de.Information_of_your_installation=Information of your installation
de.information_requested=please fill in the information requested to configure your Setora installation
de.Your_Full_Name=Your Full Name (last name and first name)
de.Your_Email=Your Email
de.Your_FQDN=Your FQDN (Full Qualified Domain Name)
de.Password_For_Zadmin=Password For Zadmin
de.Your_Sentora_install_Configure=Your Sentora install Configure

; Hebrew fork for participate translation
he.Sentora_For_Windows=Sentora For Windows
he.Installandregisterserver=Installing services and registering applications
he.Configure_your_Sentora_Installation=Configure your Sentora Installation
he.Information_of_your_installation=Information of your installation
he.information_requested=please fill in the information requested to configure your Setora installation
he.Your_Full_Name=Your Full Name (last name and first name)
he.Your_Email=Your Email
he.Your_FQDN=Your FQDN (Full Qualified Domain Name)
he.Password_For_Zadmin=Password For Zadmin
he.Your_Sentora_install_Configure=Your Sentora install Configure

; Icelandic fork for participate translation
ic.Sentora_For_Windows=Sentora For Windows
ic.Installandregisterserver=Installing services and registering applications
ic.Configure_your_Sentora_Installation=Configure your Sentora Installation
ic.Information_of_your_installation=Information of your installation
ic.information_requested=please fill in the information requested to configure your Setora installation
ic.Your_Full_Name=Your Full Name (last name and first name)
ic.Your_Email=Your Email
ic.Your_FQDN=Your FQDN (Full Qualified Domain Name)
ic.Password_For_Zadmin=Password For Zadmin
ic.Your_Sentora_install_Configure=Your Sentora install Configure

; Italian fork for participate translation
it.Sentora_For_Windows=Sentora For Windows
it.Installandregisterserver=Installing services and registering applications
it.Configure_your_Sentora_Installation=Configure your Sentora Installation
it.Information_of_your_installation=Information of your installation
it.information_requested=please fill in the information requested to configure your Setora installation
it.Your_Full_Name=Your Full Name (last name and first name)
it.Your_Email=Your Email
it.Your_FQDN=Your FQDN (Full Qualified Domain Name)
it.Password_For_Zadmin=Password For Zadmin
it.Your_Sentora_install_Configure=Your Sentora install Configure

; Japanese fork for participate translation
jp.Sentora_For_Windows=Sentora For Windows
jp.Installandregisterserver=Installing services and registering applications
jp.Configure_your_Sentora_Installation=Configure your Sentora Installation
jp.Information_of_your_installation=Information of your installation
jp.information_requested=please fill in the information requested to configure your Setora installation
jp.Your_Full_Name=Your Full Name (last name and first name)
jp.Your_Email=Your Email
jp.Your_FQDN=Your FQDN (Full Qualified Domain Name)
jp.Password_For_Zadmin=Password For Zadmin
jp.Your_Sentora_install_Configure=Your Sentora install Configure

; Norwegian fork for participate translation
no.Sentora_For_Windows=Sentora For Windows
no.Installandregisterserver=Installing services and registering applications
no.Configure_your_Sentora_Installation=Configure your Sentora Installation
no.Information_of_your_installation=Information of your installation
no.information_requested=please fill in the information requested to configure your Setora installation
no.Your_Full_Name=Your Full Name (last name and first name)
no.Your_Email=Your Email
no.Your_FQDN=Your FQDN (Full Qualified Domain Name)
no.Password_For_Zadmin=Password For Zadmin
no.Your_Sentora_install_Configure=Your Sentora install Configure

; Polish fork for participate translation
pl.Sentora_For_Windows=Sentora For Windows
pl.Installandregisterserver=Installing services and registering applications
pl.Configure_your_Sentora_Installation=Configure your Sentora Installation
pl.Information_of_your_installation=Information of your installation
pl.information_requested=please fill in the information requested to configure your Setora installation
pl.Your_Full_Name=Your Full Name (last name and first name)
pl.Your_Email=Your Email
pl.Your_FQDN=Your FQDN (Full Qualified Domain Name)
pl.Password_For_Zadmin=Password For Zadmin
pl.Your_Sentora_install_Configure=Your Sentora install Configure

; Portuguese fork for participate translation
pt.Sentora_For_Windows=Sentora For Windows
pt.Installandregisterserver=Installing services and registering applications
pt.Configure_your_Sentora_Installation=Configure your Sentora Installation
pt.Information_of_your_installation=Information of your installation
pt.information_requested=please fill in the information requested to configure your Setora installation
pt.Your_Full_Name=Your Full Name (last name and first name)
pt.Your_Email=Your Email
pt.Your_FQDN=Your FQDN (Full Qualified Domain Name)
pt.Password_For_Zadmin=Password For Zadmin
pt.Your_Sentora_install_Configure=Your Sentora install Configure

; Russian fork for participate translation
ru.Sentora_For_Windows=Sentora For Windows
ru.Installandregisterserver=Installing services and registering applications
ru.Configure_your_Sentora_Installation=Configure your Sentora Installation
ru.Information_of_your_installation=Information of your installation
ru.information_requested=please fill in the information requested to configure your Setora installation
ru.Your_Full_Name=Your Full Name (last name and first name)
ru.Your_Email=Your Email
ru.Your_FQDN=Your FQDN (Full Qualified Domain Name)
ru.Password_For_Zadmin=Password For Zadmin
ru.Your_Sentora_install_Configure=Your Sentora install Configure

; Slovak fork for participate translation
sk.Sentora_For_Windows=Sentora For Windows
sk.Installandregisterserver=Installing services and registering applications
sk.Configure_your_Sentora_Installation=Configure your Sentora Installation
sk.Information_of_your_installation=Information of your installation
sk.information_requested=please fill in the information requested to configure your Setora installation
sk.Your_Full_Name=Your Full Name (last name and first name)
sk.Your_Email=Your Email
sk.Your_FQDN=Your FQDN (Full Qualified Domain Name)
sk.Password_For_Zadmin=Password For Zadmin
sk.Your_Sentora_install_Configure=Your Sentora install Configure

; Slovenian fork for participate translation
sl.Sentora_For_Windows=Sentora For Windows
sl.Installandregisterserver=Installing services and registering applications
sl.Configure_your_Sentora_Installation=Configure your Sentora Installation
sl.Information_of_your_installation=Information of your installation
sl.information_requested=please fill in the information requested to configure your Setora installation
sl.Your_Full_Name=Your Full Name (last name and first name)
sl.Your_Email=Your Email
sl.Your_FQDN=Your FQDN (Full Qualified Domain Name)
sl.Password_For_Zadmin=Password For Zadmin
sl.Your_Sentora_install_Configure=Your Sentora install Configure

; Spanish fork for participate translation
es.Sentora_For_Windows=Sentora For Windows
es.Installandregisterserver=Installing services and registering applications
es.Configure_your_Sentora_Installation=Configure your Sentora Installation
es.Information_of_your_installation=Information of your installation
es.information_requested=please fill in the information requested to configure your Setora installation
es.Your_Full_Name=Your Full Name (last name and first name)
es.Your_Email=Your Email
es.Your_FQDN=Your FQDN (Full Qualified Domain Name)
es.Password_For_Zadmin=Password For Zadmin
es.Your_Sentora_install_Configure=Your Sentora install Configure

; Turkish fork for participate translation
tr.Sentora_For_Windows=Sentora For Windows
tr.Installandregisterserver=Installing services and registering applications
tr.Configure_your_Sentora_Installation=Configure your Sentora Installation
tr.Information_of_your_installation=Information of your installation
tr.information_requested=please fill in the information requested to configure your Setora installation
tr.Your_Full_Name=Your Full Name (last name and first name)
tr.Your_Email=Your Email
tr.Your_FQDN=Your FQDN (Full Qualified Domain Name)
tr.Password_For_Zadmin=Password For Zadmin
tr.Your_Sentora_install_Configure=Your Sentora install Configure

; Ukrainian fork for participate translation
uk.Sentora_For_Windows=Sentora For Windows
uk.Installandregisterserver=Installing services and registering applications
uk.Configure_your_Sentora_Installation=Configure your Sentora Installation
uk.Information_of_your_installation=Information of your installation
uk.information_requested=please fill in the information requested to configure your Setora installation
uk.Your_Full_Name=Your Full Name (last name and first name)
uk.Your_Email=Your Email
uk.Your_FQDN=Your FQDN (Full Qualified Domain Name)
uk.Password_For_Zadmin=Password For Zadmin
uk.Your_Sentora_install_Configure=Your Sentora install Configure


;for add other language please paticipate to inno setup project translate
;original english file
;https://github.com/jrsoftware/issrc/raw/main/Files/Default.isl
;add your translated file in this git folder
;https://github.com/jrsoftware/issrc/tree/main/Files/Languages



[Languages]
;english
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "ar"; MessagesFile: "compiler:Languages\Armenian.isl"
Name: "pt_br"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "ca"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "co"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "cz"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "da"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "nl"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "fi"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"; LicenseFile: "embedded\License-french.rtf"; InfoBeforeFile: "embedded\InfoBefore-french.rtf"
Name: "de"; MessagesFile: "compiler:Languages\German.isl"
Name: "he"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "ic"; MessagesFile: "compiler:Languages\Icelandic.isl"
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "jp"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "no"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "pl"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "pt"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "sk"; MessagesFile: "compiler:Languages\Slovak.isl"
Name: "sl"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "tr"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "uk"; MessagesFile: "compiler:Languages\Ukrainian.isl"

[Registry]
; Imported Registry File: "C:\zpanel\bin\bind\bin\bind.reg"
Root: "HKLM64"; Subkey: "SOFTWARE\ISC\BIND"; ValueType: string; ValueName: "InstallDir"; ValueData: "{app}\bin\bind"; Flags: uninsdeletekey
Root: "HKLM"; Subkey: "SOFTWARE\ISC\BIND"; ValueType: string; ValueName: "InstallDir"; ValueData: "{app}\bin\bind"; Flags: uninsdeletekey
;configuration for add PATH Variable
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment\"; ValueType: string; ValueName: "Path"; ValueData: "{reg:HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\,Path};{app}\bin\apache\bin;{app}\bin\mysql\bin;{app}\bin\php;{app}\bin\cygtools\bin;{app}\bin\bind\bin"

[Code]
Procedure URLLabelOnClick(Sender: TObject);
var
  ErrorCode: Integer;
begin
  ShellExec('open', 'http://www.sentora.org', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;


var
  PageParam1: TInputQueryWizardPage;


procedure CreateTheWizardPages;

begin

PageParam1 := CreateInputQueryPage(wpSelectTasks,
  ExpandConstant('{cm:Configure_your_Sentora_Installation}'), ExpandConstant('{cm:Information_of_your_installation}'),
  ExpandConstant('{cm:information_requested}'));
    PageParam1.Add(ExpandConstant('{cm:Your_Full_Name}:'), False);
    PageParam1.Add(ExpandConstant('{cm:Your_Email}:'), False);
//	a small dedication to our Boby
    PageParam1.Values[0]:= 'Example Boby Allen';
    PageParam1.Values[1]:= 'Example BobyAlen@example.com';
end;

function GetParam1(Param1: String): String;
begin
    Result := PageParam1.Values[0];
end;
function GetParam2(Param1: String): String;
begin
    Result := PageParam1.Values[1];
end;


var
  PageParamm2: TInputQueryWizardPage;

procedure CreateTheWizardPages1;
begin
// Create the page
PageParamm2 := CreateInputQueryPage(PageParam1.ID,
  ExpandConstant('{cm:Configure_your_Sentora_Installation}'), ExpandConstant('{cm:Information_of_your_installation}'),
  ExpandConstant('{cm:information_requested}'));


    PageParamm2.Add(ExpandConstant('{cm:Your_FQDN}:'), False);
    PageParamm2.Add(ExpandConstant('{cm:Password_For_Zadmin}:'), False);
    PageParamm2.Values[0]:= 'Example panel.example.com';
    PageParamm2.Values[1]:= 'Example admin';
end;


function GetParam3(Paramm2: String): String;
begin
    Result := PageParamm2.Values[0];
end;
function GetParam4(Paramm2: String): String;
begin
    Result := PageParamm2.Values[1];
end;



var
  PageParamm3: TInputQueryWizardPage;

procedure CreateTheWizardPages2;
begin
// Create the page
PageParamm3 := CreateInputQueryPage(PageParamm2.ID,
  ExpandConstant('{cm:Configure_your_Sentora_Installation}'), ExpandConstant('{cm:Information_of_your_installation}'),
  ExpandConstant('{cm:information_requested}'));


    PageParamm3.Add(ExpandConstant('v2 {cm:Your_FQDN}:'), False);
    PageParamm3.Add(ExpandConstant('v2 {cm:Password_For_Zadmin}:'), False);
    PageParamm3.Values[0]:= 'Example panel.example.com';
    PageParamm3.Values[1]:= 'Example admin';
end;


function GetParam5(Paramm3: String): String;
begin
    Result := PageParamm3.Values[0];
end;
function GetParam6(Paramm3: String): String;
begin
    Result := PageParamm3.Values[1];
end;

//code for uninstall PATH Variable
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
      AppDir := ExpandConstant('{app}\bin\apache\bin;{app}\bin\mysql\bin;{app}\bin\php;{app}\bin\cygtools\bin;{app}\bin\bind\bin');
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
  CreateTheWizardPages2;
//end;
//begin
//if FileExists('C:\zpanel\panel\cnf\db.php') then
	idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/update/update.php', ExpandConstant('{tmp}\update.php'));
	idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/update/update.sql', ExpandConstant('{tmp}\update.sql'));
	idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/update/db.php', ExpandConstant('{tmp}\db.php'));
	idpAddFile('https://github.com/zpanel/zpanelx/raw/10.1.1/etc/build/config_packs/ms_windows/zpanelx-update/10-1-0/zpanel_update.sql', ExpandConstant('{tmp}\zpanel_10-1-0_update.sql'));
	idpAddFile('https://github.com/zpanel/zpanelx/raw/10.1.1/etc/build/config_packs/ms_windows/zpanelx-update/10-1-0/roundcube_update.sql', ExpandConstant('{tmp}\roundcube_update.sql'));
	idpAddFile('https://github.com/zpanel/zpanelx/raw/10.1.1/etc/build/config_packs/ms_windows/zpanelx-update/10-1-1/zpanel_update.sql', ExpandConstant('{tmp}\zpanel-10-1-1_update.sql'));
//end;
begin
  if IsWin64 then
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/httpd-2.4.38-win64-VC11.zip', ExpandConstant('{tmp}\httpd-2.4.38-win64-VC11.zip'))
  else
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/httpd-2.4.38-win32-VC11.zip', ExpandConstant('{tmp}\httpd-2.4.38-win32-VC11.zip'));
end;
begin
  if IsWin64 then
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/vcredist5_x64.exe', ExpandConstant('{tmp}\vcredist5_x64.exe'))
  else
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/vcredist5_x86.exe', ExpandConstant('{tmp}\vcredist5_x86.exe'));
end;
begin
  if IsWin64 then
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/vcredist8_x64.exe', ExpandConstant('{tmp}\vcredist8_x64.exe'))
  else
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/vcredist8_x86.exe', ExpandConstant('{tmp}\vcredist8_x86.exe'));
end;
begin
  if IsWin64 then
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/vcredist11_x64.exe', ExpandConstant('{tmp}\vcredist11_x64.exe'))
  else
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/vcredist11_x86.exe', ExpandConstant('{tmp}\vcredist11_x86.exe'));
end;
begin
  if IsWin64 then
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/vcredist13_x64.exe', ExpandConstant('{tmp}\vcredist13_x64.exe'))
  else
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/vcredist13_x86.exe', ExpandConstant('{tmp}\vcredist13_x86.exe'));
end;
begin
  if IsWin64 then
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/php-5.6.40-Win32-VC11-x64.zip', ExpandConstant('{tmp}\php-5.6.40-Win32-VC11-x64.zip'))
  else

      idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/php-5.6.40-Win32-VC11-x86.zip', ExpandConstant('{tmp}\php-5.6.40-Win32-VC11-x86.zip'));
end;
begin
  if IsWin64 then
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/mysql-5.7.29-winx64.zip', ExpandConstant('{tmp}\mysql-5.7.29-winx64.zip'))
  else
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/mysql-5.7.29-win32.zip', ExpandConstant('{tmp}\mysql-5.7.29-win32.zip'));
end;
begin
  if IsWin64 then
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/BIND9.14.8.x64.zip', ExpandConstant('{tmp}\BIND9.14.8.x64.zip'))
  else
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/BIND9.14.8.x86.zip', ExpandConstant('{tmp}\BIND9.14.8.x86.zip'));
end;
begin
  if IsWin64 then
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/%7Bapp%7D/bin/cygtools/cygtools-64bit.zip', ExpandConstant('{tmp}\cygtools-64bit.zip'))
  else
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/%7Bapp%7D/bin/cygtools/cygtools-32bit.zip', ExpandConstant('{tmp}\cygtools-32bit.zip'));
end;
begin
  if IsWin64 then
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/hMailServer-5.7.0-B2604-x64.exe', ExpandConstant('{tmp}\hMailServer-5.7.0-B2604-x64.exe'))
  else
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/hMailServer-5.6.7-B2425.exe', ExpandConstant('{tmp}\hMailServer-5.6.7-B2425.exe'));
end;
begin
  if IsWin64 then
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/Windows8.1-KB2919442-x64.msu', ExpandConstant('{tmp}\Windows8.1-KB2919442-x64.msu'))
end;
begin
  if IsWin64 then
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/Windows8.1-KB2919355-x64.msu', ExpandConstant('{tmp}\Windows8.1-KB2919355-x64.msu'))
end;
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/dotnetfx35.exe', ExpandConstant('{tmp}\dotnetfx35.exe'));
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/releases/download/1.0.3-b2/NDP452-KB2901907-x86-x64-AllOS-ENU.exe', ExpandConstant('{tmp}\NDP452-KB2901907-x86-x64-AllOS-ENU.exe'));
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/install/install_services.bat', ExpandConstant('{tmp}\install_services.bat'));
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/install/install.php', ExpandConstant('{tmp}\install.php'));
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/install/enviroment_configure.php', ExpandConstant('{tmp}\enviroment_configure.php'));
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/archive/master.zip', ExpandConstant('{tmp}\master.zip'));
    idpAddFile('https://github.com/andykimpe/Sentora-Windows-Upgrade/raw/master/installer/update/zpanel_roundcube.sql', ExpandConstant('{tmp}\zpanel_roundcube.sql'));

    idpDownloadAfter(wpReady);
end;
function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo, MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: String): String;
begin
    Result := ''

    if MemoUserInfoInfo <> '' then begin
        Result := MemoUserInfoInfo + Newline + NewLine;
    end;
    if MemoDirInfo <> '' then begin
        Result := Result + MemoDirInfo + Newline + NewLine;
    end;
    if MemoTypeInfo <> '' then begin
        Result := Result + MemoTypeInfo + Newline + NewLine;
    end;
    if MemoComponentsInfo <> '' then begin
        Result := Result + MemoComponentsInfo + Newline + NewLine;
    end;
    if MemoGroupInfo <> '' then begin
        Result := Result + MemoGroupInfo + Newline + NewLine;
    end;
    if MemoTasksInfo <> '' then begin
        Result := Result + MemoTasksInfo + Newline + NewLine;
    end;
    
    Result := Result + ExpandConstant('{cm:Your_Sentora_install_Configure}:') + NewLine + NewLine;	
    Result := Result + ExpandConstant('{cm:Your_Full_Name}:') + PageParam1.Values[0] + NewLine;	
    Result := Result + ExpandConstant('{cm:Your_Email}:') + PageParam1.Values[1] + NewLine;	
    Result := Result + ExpandConstant('{cm:Your_FQDN}:') + PageParamm2.Values[0] + NewLine;	
    Result := Result + ExpandConstant('{cm:Password_For_Zadmin}:')  + PageParamm2.Values[1] + NewLine;
end;
