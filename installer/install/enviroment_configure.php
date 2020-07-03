<?php
$install_folder = $argv[1];
$temp_dir = $argv[2];
$temp_phpdir = str_replace("\\", "/", $temp_dir);
$your_full_name = $argv[3];
$your_email = $argv[4];
$your_fqdn = $argv[5];
$password_for_zadmin = $argv[6];
$install_phpdir = str_replace("\\", "/", $install_folder);
$install_slash = str_replace("\\", "\\\\", $install_folder);
fwrite(STDOUT, "\r
install folder " . $install_folder . "\r
install php dir " . $install_phpdir . "\r
install slash " . $install_slash . "\r
temp dir " . $temp_dir . "\r
full name " . $your_full_name . "\r
email " . $your_email . "\r
fqdn " . $your_fqdn . "\r
zadmin password " . $password_for_zadmin . "\r");
// ZPanel version (Sent to ZPanel)
$version = "1.0.3";

// Set default MySQL account details etc...
$hostname_db = "localhost";
$username_db = "root";
$password_db = "";
$db = mysql_pconnect($hostname_db, $username_db, $password_db) or trigger_error('Unable to connect to database server.');

// Generate two random passwords...
$p1 = substr(md5(uniqid(rand(), 1)), 3, 8);
$p2 = substr(md5(uniqid(rand(), 1)), 3, 6);

// Set MySQL ROOT password to a random password and display to user!
fwrite(STDOUT, "\rConfiguring MySQL 'root' password...\r\r");
$sql = "SET PASSWORD FOR `root`@`localhost`=PASSWORD('" . $p1 . "')";
$resault = @mysql_query($sql, $db) or die(mysql_error());
$sql = "FLUSH PRIVILEGES;";
$resault = @mysql_query($sql, $db) or die(mysql_error());

// Create system.php file for database access:-
$db_settings_file = fopen("" . $install_phpdir . "/panel/cnf/db.php", "w");
fwrite($db_settings_file, "<?php\n");
fwrite($db_settings_file, "/**\n");
fwrite($db_settings_file, " * Database configuration file.\n");
fwrite($db_settings_file, " * @package sentora\n");
fwrite($db_settings_file, " * @subpackage core -> config\n");
fwrite($db_settings_file, " * @author Bobby Allen (ballen@zpanelcp.com)\n");
fwrite($db_settings_file, " * @copyright Sentora Project (http://www.sentora.org/)\n");
fwrite($db_settings_file, " * @link http://www.sentora.org/\n");
fwrite($db_settings_file, " * @license GPL (http://www.gnu.org/licenses/gpl.html)\n");
fwrite($db_settings_file, " */\n");
fwrite($db_settings_file, "\$host = \"localhost\";\n");
fwrite($db_settings_file, "\$dbname = \"sentora_core\";\n");
fwrite($db_settings_file, "\$user = \"root\";\n");
fwrite($db_settings_file, "\$pass = \"" . $p1 . "\";\n");
fwrite($db_settings_file, "?>");
fclose($db_settings_file);

// Now we connect with the correct username and password as we just reset it...
$hostname_db = "localhost";
$username_db = "root";
$password_db = $p1;
$db = mysql_pconnect($hostname_db, $username_db, $password_db) or trigger_error('Unable to connect to database server.');

// Create databases (zpanel_core, zpanel_roundcube and zpanel_hmail)
$sql = "CREATE DATABASE `sentora_roundcube` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;";
$resault = @mysql_query($sql, $db) or die(mysql_error());
$sql = "CREATE DATABASE `sentora_hmail` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;";
$resault = @mysql_query($sql, $db) or die(mysql_error());

// SQL script executor...

function RunSQL($sqlFileToExecute) {
    $f = fopen($sqlFileToExecute, "r+");
    $sqlFile = fread($f, filesize($sqlFileToExecute));
    $sqlArray = explode(';', $sqlFile);
    foreach ($sqlArray as $stmt) {
        if (strlen($stmt) > 3) {
            $result = mysql_query($stmt);
            if (!$result) {
                $sqlErrorCode = mysql_errno();
                $sqlErrorText = mysql_error();
                $sqlStmt = $stmt;
                break;
            }
        }
    }
}

// Get the 'true' server IP address.

function GetServerIPFromZWS() {
    $response = @file_get_contents('http://api.sentora.org/ip.txt');
    return $response;
}

// Insert Roundcube inital SQL into the zpanel_roundcube database.
mysql_select_db('sentoa_roundcube', $db);
$sqlFileToExecute = "" . $install_phpdir . "/panel/etc/apps/webmail/SQL/mysql.initial.sql";
$res = RunSQL($sqlFileToExecute);

// Insert hMailServer inital SQL into the zpanel_hmail database.
mysql_select_db('sentora_hmail', $db);
$sqlFileToExecute = "" . $temp_phpdir . "/Sentora-Windows-Upgrade-master/installer/{app}/bin/zpps/bin/zpps/sentora_hmail.sql";
$res = RunSQL($sqlFileToExecute);

// Set database back to ZPanel core to continue with the install.
@mysql_select_db('sentora_core', $db);

// Update the current Apache Config to include the new Apache configs as part of the 'config_packs':-
$db_settings_file = fopen("" . $install_phpdir . "/bin/apache/conf/extra/httpd-vhosts.conf", "w");
fwrite($db_settings_file, "# Include the ZPanel managed http-vhosts file.\r\n");
fwrite($db_settings_file, "Include " . $install_phpdir . "/configs/apache/httpd-vhosts.conf");
fclose($db_settings_file);
// Ask user what domain they will be hosting the control panel on and then create it and add entries to the hosts file...
$fullname = $your_full_name;
$email = $your_email;
$location = trim(fgets(STDIN));


@mysql_select_db('sentoa_core', $db);
exec("setso --set dbversion " . $version . "");
exec("setso --set sentora_domain " . $location . "");
exec("setso --set email_from_address " . $email . "");
exec("setso --set email_from_address " . $email . "");
exec("setso --set daemon_lastrun 0");
exec("setso --set daemon_dayrun 0");
exec("setso --set daemon_weekrun 0");
exec("setso --set daemon_monthrun 0");
exec("setso --set apache_changed true");
exec("setso --set server_ip " . GetServerIPFromZWS() . "");

@mysql_select_db('sentora_core', $db);
// We now update the MySQL user for the default 'zadmin' account..
$log = "UPDATE x_accounts SET ac_pass_vc='" . md5($p2) . "', ac_email_vc='" . $email . "', ac_created_ts=" . time() . " WHERE ac_user_vc='zadmin'";
$do = @mysql_query($log, $db) or die(mysql_error());

// Now we add the server admin to the server admin database table..
$sql = "UPDATE x_profiles SET ud_created_ts=" . time() . ", ud_fullname_vc='" . $fullname . "' WHERE ud_user_fk=1;";
mysql_query($sql, $db);

// Create db.inc.php for Roundcube webmail:-
$db_settings_file = fopen("" . $install_phpdir . "/panel/etc/apps/webmail/config/db.inc.php", "w");
fwrite($db_settings_file, "<?php\n");
fwrite($db_settings_file, "\$rcmail_config = array();\n");
fwrite($db_settings_file, "\$rcmail_config['db_dsnw'] = 'mysql://root:" . $p1 . "@localhost/sentora_roundcube';\n");
fwrite($db_settings_file, "\$rcmail_config['db_dsnr'] = '';\n");
fwrite($db_settings_file, "\$rcmail_config['db_max_length'] = 512000;\n");
fwrite($db_settings_file, "\$rcmail_config['db_persistent'] = FALSE;\n");
fwrite($db_settings_file, "\$rcmail_config['db_table_users'] = 'users';\n");
fwrite($db_settings_file, "\$rcmail_config['db_table_identities'] = 'identities';\n");
fwrite($db_settings_file, "\$rcmail_config['db_table_contacts'] = 'contacts';\n");
fwrite($db_settings_file, "\$rcmail_config['db_table_session'] = 'session';\n");
fwrite($db_settings_file, "\$rcmail_config['db_table_cache'] = 'cache';\n");
fwrite($db_settings_file, "\$rcmail_config['db_table_messages'] = 'messages';\n");
fwrite($db_settings_file, "\$rcmail_config['db_sequence_users'] = 'user_ids';\n");
fwrite($db_settings_file, "\$rcmail_config['db_sequence_identities'] = 'identity_ids';\n");
fwrite($db_settings_file, "\$rcmail_config['db_sequence_contacts'] = 'contact_ids';\n");
fwrite($db_settings_file, "\$rcmail_config['db_sequence_cache'] = 'cache_ids';\n");
fwrite($db_settings_file, "\$rcmail_config['db_sequence_messages'] = 'message_ids';\n");
fwrite($db_settings_file, "?>");
fclose($db_settings_file);

// Create hMailServer.INI for hMailServer MySQL configuration:-
$db_settings_file = @fopen("" . $install_phpdir . "/bin/hmailserver/Bin/hMailServer.ini", "w");
fwrite($db_settings_file, "\r
################################################################\r
# hMailServer configuration file                               #\r
# Automatically generated by Sentora installer for Windows     #\r
################################################################\r
\r");
fwrite($db_settings_file, "\r\n");
fwrite($db_settings_file, "[Directories]\r\n");
fwrite($db_settings_file, "ProgramFolder=" . $install_folder . "\bin\hmailserver\r\n");
fwrite($db_settings_file, "DataFolder=" . $install_folder . "\bin\hmailserver\Data\r\n");
fwrite($db_settings_file, "LogFolder=" . $install_folder . "\logs\r\n");
fwrite($db_settings_file, "TempFolder=" . $install_folder . "\bin\hmailserver\Temp\r\n");
fwrite($db_settings_file, "EventFolder=" . $install_folder . "\bin\hmailserver\Events\r\n");
fwrite($db_settings_file, "\r\n");
fwrite($db_settings_file, "[GUILanguages]\r\n");
fwrite($db_settings_file, "ValidLanguages=english,swedish\r\n");
fwrite($db_settings_file, "\r\n");
fwrite($db_settings_file, "[Database]\r\n");
fwrite($db_settings_file, "Type=MYSQL\r\n");
fwrite($db_settings_file, "Username=root\r\n");
fwrite($db_settings_file, "Password=" . $p1 . "\r\n");
fwrite($db_settings_file, "PasswordEncryption=0\r\n");
fwrite($db_settings_file, "Port=3306\r\n");
fwrite($db_settings_file, "Server=localhost\r\n");
fwrite($db_settings_file, "Database=sentora_hmail\r\n");
fwrite($db_settings_file, "Internal=0\r\n");
fwrite($db_settings_file, "\r\n");
fwrite($db_settings_file, "[Security]\r\n");
fwrite($db_settings_file, "AdministratorPassword=" . md5($p2) . "\r\n");
fclose($db_settings_file);

fwrite(STDOUT, "\r
################################################################\r
# YOUR SENTORA SERVER LOGIN DETAILS                             #\r
################################################################\r
\r
\r
Your new MySQL 'root' password is: " . $p1 . "\r
\r
Your new Sentora details are as follows:-\r
\r
URL: http://" . $location . "/\r
Username: zadmin\r
Password: " . $p2 . "\r
\r
These details can also be found in c:\zpanel\login_details.txt\r
\r
Thank you for installing Sentora!\r\r");

// Now we add a static route so the server admin can instantly access the control panel, and reboot Apache so VHOST is activated.
exec("" . $install_phpdir . "/bin/zpss/setroute.exe " . $location . "");

// Add the password details to a file in C:\zpanel
$db_settings_file = fopen("" . $install_phpdir . "/login_details.txt", "w");
fwrite($db_settings_file, "MySQL Root Password: " .$p1. "\r\n");
fwrite($db_settings_file, "Sentora URL: http://" .$location. "\r\n");
fwrite($db_settings_file, "Sentora account: zadmin\r\n");
fwrite($db_settings_file, "Sentora and Hmail password: ");
fclose($db_settings_file);
?>
