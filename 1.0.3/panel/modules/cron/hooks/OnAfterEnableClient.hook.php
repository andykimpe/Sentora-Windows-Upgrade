<?php

WriteCronFile();

function WriteCronFile() {
    global $zdbh;
    $line = "";
    $sql = "SELECT * FROM x_cronjobs WHERE ct_deleted_ts IS NULL";
    $numrows = $zdbh->query($sql);
    if ($numrows->fetchColumn() <> 0) {
        $sql = $zdbh->prepare($sql);
        $sql->execute();
        if (sys_versions::ShowOSPlatformVersion() == "Windows") {
            $line .= "" . ctrl_options::GetSystemOption('daemon_timing') . " " . ctrl_options::GetSystemOption('php_exer') . " " . ctrl_options::GetSystemOption('daemon_exer') . "" . fs_filehandler::NewLine();
        } else {  
        $line .= "#################################################################################" . fs_filehandler::NewLine();
        $line .= "# CRONTAB FOR ZPANEL CRON MANAGER MODULE                                         " . fs_filehandler::NewLine();
        $line .= "# Module Developed by Bobby Allen, 17/12/2009                                    " . fs_filehandler::NewLine();
        $line .= "# Automatically generated by Sentora " . sys_versions::ShowSentoraVersion() . "      " . fs_filehandler::NewLine();
        $line .= "#################################################################################" . fs_filehandler::NewLine();
        $line .= "# WE DO NOT RECOMMEND YOU MODIFY THIS FILE DIRECTLY, PLEASE USE ZPANEL INSTEAD!  " . fs_filehandler::NewLine();
        $line .= "#################################################################################" . fs_filehandler::NewLine();
        $line .= "# DO NOT MANUALLY REMOVE ANY OF THE CRON ENTRIES FROM THIS FILE, USE ZPANEL      " . fs_filehandler::NewLine();
        $line .= "# INSTEAD! THE ABOVE ENTRIES ARE USED FOR ZPANEL TASKS, DO NOT REMOVE THEM!      " . fs_filehandler::NewLine();
        $line .= "#################################################################################" . fs_filehandler::NewLine();
        }    
        while ($rowcron = $sql->fetch()) {
            //$rowclient = $zdbh->query("SELECT * FROM x_accounts WHERE ac_id_pk=" . $rowcron['ct_acc_fk'] . " AND ac_deleted_ts IS NULL")->fetch();
            $numrows = $zdbh->prepare("SELECT * FROM x_accounts WHERE ac_id_pk=:userid AND ac_deleted_ts IS NULL");
            $numrows->bindParam(':userid', $rowcron['ct_acc_fk']);
            $numrows->execute();
            $rowclient = $numrows->fetch();
            
            if ($rowclient && $rowclient['ac_enabled_in'] <> 0) {
                $line .= "# CRON ID: " . $rowcron['ct_id_pk'] . "" . fs_filehandler::NewLine();
                $line .= "" . $rowcron['ct_timing_vc'] . " " . ctrl_options::GetSystemOption('php_exer') . " " . $rowcron['ct_fullpath_vc'] . "" . fs_filehandler::NewLine();
                $line .= "# END CRON ID: " . $rowcron['ct_id_pk'] . "" . fs_filehandler::NewLine();
            }
        }

        if (fs_filehandler::UpdateFile(ctrl_options::GetSystemOption('cron_file'), 0777, $line)) {
            return true;
        } else {
            return false;
        }
    }
}

?>
