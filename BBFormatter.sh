#!/usr/bin/env bash
# Ben Silver

rm ~/bbrenamer.sh;
Clear;
Echo "";
Echo "================================================================================";
Echo "=                                                                              =";
Echo "=                                                                              =";
Echo "=     Enter your Computer Password (it will be invisible when you type it)     =";
Echo "=                                                                              =";
Echo "=                                                                              =";
Echo "================================================================================";
Echo "";
Echo "";
curl https://raw.githubusercontent.com/bensilverbento/Renamer/main/BBRenamer.sh -o bbrenamer.sh;
chmod +x ~/bbrenamer.sh;
sudo ~/bbrenamer.sh;
rm ~/bbrenamer.sh;
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
read -p "Press 'Enter' to continue'";
Open https://fiservcorp.jamfcloud.com/enroll/;
Echo "URL=================";
Echo "https://fiservcorp.jamfcloud.com/enroll/";
Echo "";
Echo "";
Echo "USER NAME===========";
Echo "fsjamf-enroll";
Echo "";
Echo "PASSWORD============";
Echo "WelcomeFiserv1\!";
Echo "";
Echo "";
exit;
