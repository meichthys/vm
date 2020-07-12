#!/bin/bash

# T&M Hansson IT AB © - 2020, https://www.hanssonit.se/

####### MASTER #######

# shellcheck disable=2034,2059
true
# shellcheck source=lib.sh
. <(curl -sL https://raw.githubusercontent.com/nextcloud/vm/master/lib.sh)

# Check for errors + debug code and abort if something isn't right
# 1 = ON
# 0 = OFF
DEBUG=0
debug_mode

# Must be root
root_check

# Must be 20.04
if ! version 20.04 "$DISTRO" 20.04.6
    msg_box "You need to run Ubuntu 20.04 Server to run this script"
    exit 1
fi

# Check if ncadmin exists
if ! grep -q "ncadmin" /etc/passwd
then
    msg_box "This script based on that the default user 'ncadmin' exists on the system.\n\nPlease re-install this server and create 'ncadmin' during the installation process."
    exit 1
 fi

# Create scripts folder
mkdir -p "$SCRIPTS"

# Get needed scripts for first bootup
download_script GITHUB_REPO lib
download_script STATIC history
download_script STATIC static_ip

# Check if dpkg or apt is running
is_process_running apt
is_process_running dpkg

# Put IP adress in /etc/issue (shown before the login)
if [ -f /etc/issue ]
then
{
echo "\4"
echo "DEFAULT USER: ncadmin"
echo "DEFAULT PASS: nextcloud" 
} >> /etc/issue
fi

####### OFFICIAL (custom scripts) #######

# shellcheck disable=2034,2059
true
# shellcheck source=lib.sh
. <(curl -sL https://raw.githubusercontent.com/nextcloud/vm/official/lib.sh)

# Get needed scripts for first bootup
download_script STATIC instruction
download_script GITHUB_REPO nextcloud_install_production

# Prepare first bootup
check_command run_script STATIC change-ncadmin-profile
check_command run_script STATIC change-root-profile

# Make $SCRIPTS excutable
chmod +x -R "$SCRIPTS"
chown ncadmin:ncadmin -R "$SCRIPTS"

# Reboot
if ! reboot
then
    shutdown -r now
fi

