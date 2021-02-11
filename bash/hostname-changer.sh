#!/bin/bash
#
# This script is for the bash lab on variables, dynamic data, and user input
# Download the script, do the tasks described in the comments
# Test your script, run it on the production server, screenshot that
# Send your script to your github repo, and submit the URL with screenshot on Blackboard

# Get the current hostname using the hostname command and save it in a variable
x=$(hostname)
# Tell the user what the current hostname is in a human friendly way
echo The current hostname is : $x
# Ask for the user's student number using the read command
read -p 'Please enter your student number : ' stvar
# Use that to save the desired hostname of pcNNNNNNNNNN in a variable, where NNNNNNNNN is the student number entered by the user
s="pc"$stvar
# If that hostname is not already in the /etc/hosts file, change the old hostname in that file to the new name using sed or something similar and
#     tell the user you did that
#e.g. sed -i "s/$oldname/$newname/" /etc/hosts
grep "$s" /etc/hosts || (sudo sed -i "s/$x/$s/" /etc/hosts && echo "Changed the hostname to: $s")
# If that hostname is not the current hostname, change it using the hostnamectl command and
#     tell the user you changed the current hostname and they should reboot to make sure the new name takes full effect
#e.g. hostnamectl set-hostname $newname
grep  "$s" /etc/hostname || (sudo hostnamectl set-hostname $s && echo "Do not forget to reboot your computer")
