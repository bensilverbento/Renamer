#!/usr/bin/env bash
# Ben Silver

Clear;

Echo "=====================================";
Echo "=                                   =";
Echo "=  Removing previous JAMF profiles  =";
Echo "=                                   =";
Echo "=====================================";
Echo "";


# Remove JAMF if Installed
Echo " * Attempting to Remove Previous JAMF Profiles"
sudo /usr/local/bin/jamf removeFramework -v foo >/dev/null 2>&1 || { echo " * No Previous JAMF Profiles Found" >&2; };
Echo " * JAMF is clear"
Echo "";
read -p "Press Enter to Continue: ";

# Grab the serial number and rename the computer 
sn=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}');
scutil --set LocalHostName BB$sn;
scutil --set ComputerName BB-$sn;
scutil --set HostName BB-$sn;
sudo dscacheutil -flushcache;

# Just killing some time for the machine to refresh the names
Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--***--";
Echo "";
Sleep .5;
clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--******--";
Echo "";
Sleep .5;

Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--*********--";
Echo "";
Sleep .5;

Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--************--";
Echo "";
Sleep .5;

clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--***************--";
Echo "";
Sleep .5;

Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--******************--";
Echo "";
Sleep .5;

Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--*********************--";
Echo "";
Sleep .5;

Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--************************--";
Echo "";
Sleep .5;

Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--***************************--";
Echo "";
Sleep .5;

clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--******************************--";
Echo "";
Sleep .5;

Clear;
Echo "===========================";
Echo "= Names Have Been Updated =";
Echo "===========================";
Echo "";
Echo "ComputerName: $(scutil --get ComputerName)";
Echo "HostName: $(scutil --get HostName)";
Echo "LocalHostName: $(scutil --get LocalHostName)";
Echo "";
Echo "";
read -p "Press Enter to Continue: ";
Clear;
Echo "================================================================";
Echo "=                                                              =";
Echo "=      You will now be directed to the Enrollment Portal.      =";
Echo "=     Please Copy/Paste the Username and Password exactly!     =";
Echo "=                                                              =";
Echo "=    The webpage should automatically open. If it does not,    =";
Echo "=          Please Copy/Paste it from the next screen:          =";
Echo "=                                                              =";
Echo "================================================================";
Echo "";
Echo "";
Sleep 5;
read -p "Press Enter to Continue: ";
Clear;
Open https://fiservcorp.jamfcloud.com/enroll/;
Echo "================================================================";
Echo "=                                                              =";
Echo "=       If the Enroll Portal did not open automatically,       =";
Echo "=                   Copy/Paste it from below                   =";
Echo "=                                                              =";
Echo "=         Copy/Paste the Username/Password from below:         =";
Echo "=                                                              =";
Echo "================================================================";
Echo "";
Echo "";
Echo "URL============================================";
Echo "https://fiservcorp.jamfcloud.com/enroll/";
Echo "";
Echo "";
Echo "USER NAME======================================";
Echo "fsjamf-enroll";
Echo "";
Echo "PASSWORD=======================================";
Echo "WelcomeFiserv1\!";
Echo "";
Echo "";
Echo "================================================================";
Echo "================================================================";
exit;
