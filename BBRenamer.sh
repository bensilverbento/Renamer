#!/usr/bin/env bash
# Ben Silver
# Grab the serial number and rename the computer 
sn=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}')
scutil --set LocalHostName BB$sn
scutil --set ComputerName BB-$sn
scutil --set HostName BB-$sn
Clear
Echo Updating Computer Information:
Echo ===
sleep 1
clear
Echo Updating Computer Information:
Echo ======
sleep 1
Clear
Echo Updating Computer Information:
Echo =========
sleep 1
Clear
Echo Updating Computer Information:
Echo ============
sleep 1
clear
Echo Updating Computer Information:
Echo ===============
sleep 1
Clear
Echo Updating Computer Information:
Echo ==================
sleep 1
Clear
Echo Updating Computer Information:
Echo =====================
sleep 1
Clear
Echo Updating Computer Information:
Echo ========================
sleep 1
Clear
Echo Updating Computer Information:
Echo ===========================
sleep 1
clear
Echo Updating Computer Information:
Echo ==============================
sleep 1
exec zsh -l
Clear
Echo Names:
Echo
Echo ComputerName: $(scutil --get ComputerName)
Echo HostName: $(scutil --get HostName)
Echo LocalHostName: $(BB-$sn)
Echo
Echo
