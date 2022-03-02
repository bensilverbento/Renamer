#!/usr/bin/env bash
# Ben Silver
# Grab the serial number and rename the computer 

sn=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}')

scutil --set ComputerName BB-$sn
scutil --set HostName BB-$sn
scutil --set LocalHostName BB$sn

Clear

Echo Names:
Echo
Echo ComputerName: $(scutil --get ComputerName)
Echo HostName: $(scutil --get HostName)
Echo LocalHostName: $(scutil --get LocalHostName)
Echo
Echo
