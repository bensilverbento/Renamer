#!/usr/bin/env bash
# Ben Silver


clear

Echo Removing previous JAMF profiles
Echo
sudo /usr/local/bin/jamf removeFramework -v foo >/dev/null 2>&1 || { echo "No Previous JAMF profiles found" >&2; }

read -p "Press Enter to Continue"


# Grab the serial number and rename the computer 
sn=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}')
scutil --set LocalHostName BB$sn
scutil --set ComputerName BB-$sn
scutil --set HostName BB-$sn
Clear
Echo =================================
Echo = Updating Computer Information =
Echo =================================
Echo "  ***"
sleep 1
clear
Echo =================================
Echo = Updating Computer Information =
Echo =================================
Echo "  ******"
sleep 1
Clear
Echo =================================
Echo = Updating Computer Information =
Echo =================================
Echo "  *********"
sleep 1
Clear
Echo =================================
Echo = Updating Computer Information =
Echo =================================
Echo "  ************"
sleep 1
clear
Echo =================================
Echo = Updating Computer Information =
Echo =================================
Echo "  ***************"
sleep 1
Clear
Echo =================================
Echo = Updating Computer Information =
Echo =================================
Echo "  ******************"
sleep 1
Clear
Echo =================================
Echo = Updating Computer Information =
Echo =================================
Echo "  *********************"
sleep 1
Clear
Echo =================================
Echo = Updating Computer Information =
Echo =================================
Echo "  ************************"
sleep 1
Clear
Echo =================================
Echo = Updating Computer Information =
Echo =================================
Echo "  ***************************"
sleep 1
clear
Echo =================================
Echo = Updating Computer Information =
Echo =================================
Echo "  ******************************"
sudo dscacheutil -flushcache
sleep 1
Clear
Echo Names:
Echo
Echo ComputerName: $(scutil --get ComputerName)
Echo HostName: $(scutil --get HostName)
Echo LocalHostName: $(scutil --get LocalHostName)
Echo
Echo
