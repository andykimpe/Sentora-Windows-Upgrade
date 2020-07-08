# Sentora-Windows-Install-and-Upgrade
This project is designed install or upgrade Sentora 1.0.3 for Windows

for upgrade working ZPanel 10.0.2 or 10.1.1 or Sentora for Windows 1.0.0 MarkDark Version

Installer Upgrader Version Beta 1

please visite <a href="../../releases/">releases</a> page for download installers file

News you can now choose the installation folder

and he and everyone made it possible to install it on another hard disk than disk C

# Warning

if your update Zpanel to Sentora

dot not use install directory C:\zpanel

if for update Sentora 1.0.0 MarkDark Version

dot not use install directory C:\sentora

in order to avoid providing a pack which is very bulky (4 GB 32 + 64bit) and to be able to allow the rapid update of this one

the installer provided is less than 10 MB

and download all the dependencies himself

so if you are in 64 bit

it will download the dependencies for the 64 bit version

for 32 bit and well it's the opposite

instead of having a pack of almost 4gb it will download less than 2gb

this and possible thanks to the use of the Inno Download plugin

this installer and available in multi language

but only English and French are fully translated

for other languages you would have good on the basic translation of inno setup

and participate in the translation of custom messages

a note only the language present in inno setup can be added if you want to add a language that does not exist in inno setup it will be wrong first add that if to the project inno setup

default inno setup english language

https://github.com/jrsoftware/issrc/blob/main/Files/Default.isl

folder for translation

https://github.com/jrsoftware/issrc/tree/main/Files/Languages

Support System

Windows 7 (extendend Support 2023)

Windows Server 2008 (extendend Support 2023)

Windows 8

Windows Server 2012

Windows 10

Windows Server 2016

not supported (Reason .NET Framework 4.5.2 not compatibility)

Windows Vista

Windows XP

Windows ME

and all old Windows version

Dependency of Pack

required for use pack automated installed by installer

Microsoft Visual C++ 2005 redistribuable 64 bit or 32 bit

Microsoft Visual C++ 2008 redistribuable 64 bit or 32 bit

Microsoft Visual C++ 2011 redistribuable 64 bit or 32 bit

Microsoft Visual C++ 2013 redistribuable 64 bit or 32 bit

Microsoft .NET Framework 3.5 MultiArch (Windows 8, Windows server 2012, Windows 10 and Windows Server 2016 auto install using dism)

Microsoft .NET Framework 4.5.2 MultiArch

Content installed by the Pack

HTTPD Apache 2.4.38 64 bit or 32 bit (latest apache build using vc11 by apache lounge php 5.6 required vc11 version)

PHP 5.6.40 64 bit or 32 bit include suhosin 0.9.37.1

MySQL 5.7.29 64 bit or 32 bit

BIND (named) 9.14.8 64 bit or 32 bit

HmailServer 5.7.0-B2519 for 64 bit (solve problem libmysql.dll not read)

HmailServer 5.6.7-B2425 for 32 bit

Filezilla Server 0.9.60.2 32 bit

nnCron LITE 1.17 (solve problem daemon start on windows mode)

Sendmail for Windows 32 bit same version as in zpanel

p7zip (7z.exe) 19.00 32 bit or 64 bit

cygtools content (minimal cygwin tools) 32 bit or 64 bit

bzip2 1.0.8 

cat (GNU coreutils) 8.26

grep (GNU grep) 3.0

gzip 1.8

gunzip bat file redirect to gzip -d

ls (GNU coreutils) 8.26

sed (GNU sed) 4.4

tar 3.3.2 (bsdtar 3.3.2 - libarchive 3.3.2 zlib/1.2.5.f-ipp)

unzip 6.00

wget GNU Wget 1.19.1 built on cygwin (ssl full working tls 2 ok)

xz (XZ Utils) 5.2.4

zip 3.0



service bat file convert net command

available option

service start servicename

service stop servicename

service restart servicename

service reload servicename

service force-reload servicename





systemctl bat file convert net and sc command

available option

warning dot not use servicename.service

systemctl enable servicename

systemctl disable servicename

systemctl start servicename

systemctl stop servicename

systemctl restart servicename

systemctl reload servicename

systemctl force-reload servicename


Any questions, comments or support, please post in our forums here: http://forums.sentora.org/forumdisplay.php?fid=61

