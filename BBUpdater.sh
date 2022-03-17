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
sudo /usr/local/bin/jamf removeFramework -v foo >/dev/null 2>&1 || { echo " * No Previous JAMF profiles found" >&2; };
Echo "";
Echo "JAMF is clear";
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
Sleep 1;
clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--******--";
Echo "";
Sleep 1;
Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--*********--";
Echo "";
Sleep 1;
Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--************--";
Echo "";
Sleep 1;
clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--***************--";
Echo "";
Sleep 1;
Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--******************--";
Echo "";
Sleep 1;
Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--*********************--";
Echo "";
Sleep 1;
Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--************************--";
Echo "";
Sleep 1;
Clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--***************************--";
Echo "";
Sleep 1;
clear;
Echo "==================================";
Echo "= Updating Computer Information: =";
Echo "==================================";
Echo "--******************************--";
Echo "";
Sleep 1;
Clear;
Echo "===============================";
Echo "= Names (may require restart) =";
Echo "===============================";
Echo "";
Echo "ComputerName: $(scutil --get ComputerName)";
Echo "HostName: $(scutil --get HostName)";
Echo "LocalHostName: $(scutil --get LocalHostName)";
Echo "";
Echo "";
