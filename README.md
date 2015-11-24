# Sentora-Windows-Upgrade
This project is designed to upgrade ZPanel 10.1.1 to Sentora 1.0.3 on Windows.

This is for testing ONLY at this stage.
Do NOT use on a production server, please test on a dev server.

This is a basic conversion script to convert ZPanel 10.1.1 to Sentora 1.0.3 on Windows platforms.

***NOTICE***: Make sure you are using ZPanel 10.1.1!

This program is distributed in the hope that it will be useful, 
but WITHOUT ANY WARRANTY; without even the implied warranty of 
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Use at your OWN RISK!

1) UnZip the package. (If you are reading this, then, well, you already did! LOL)

2) Back up your entire c:/zpanel/ folder.

3) Using phpMyAdmin or your favorite database tool, login as ROOT user and make a backup of the zpanel_core database.

4) Upload all files and folders in the /panel/ folder to your server's /panel/ folder overwriting existing files.

5) Navigate to your panel login and run the upgrade script. Ex: http://zpanel.domain.com/upgrade/index.php

6) Enjoy your upgraded Sentora Panel!

Any questions, comments or support, please post in our forums here: http://forums.sentora.org/forumdisplay.php?fid=61
