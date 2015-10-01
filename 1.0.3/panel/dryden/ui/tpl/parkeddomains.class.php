<?php

/**
 * @copyright 2014-2015 Sentora Project (http://www.sentora.org/) 
 * Sentora is a GPL fork of the ZPanel Project whose original header follows:
 *
 * Generic template place holder class.
 * @package zpanelx
 * @subpackage dryden -> ui -> tpl
 * @version 1.0.0
 * @author Bobby Allen (ballen@bobbyallen.me)
 * @copyright Sentora Project (http://www.sentora.org/)
 * @link http://www.sentora.org/
 * @license GPL (http://www.gnu.org/licenses/gpl.html)
 */
class ui_tpl_parkeddomains {

    public static function Template() {
        global $controller;
        $currentuser = ctrl_users::GetUserDetail();
        $domain = ctrl_users::GetUserDomains($currentuser['userid'], 3);
        if ($domain <> 0) {
            return (string) $domain;
        }
        return (string) 0;
    }

}

?>
