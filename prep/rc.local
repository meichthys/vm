#!/bin/bash -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.

export UNIXUSER=ncadmin

# Add sleep to avoid racecondition
sleep 2

# Run existing script, or fetch a new one
if [ -f /home/ncadmin/prep_vm.sh ]
then
    bash /home/ncadmin/prep_vm.sh
elif [ ! -f /home/ncadmin/prep_vm.sh ]
then
    # Check if ncadmin exists
    if ! grep -q "ncadmin" /etc/passwd
    then
        exit 1
    else
        curl -fL https://raw.githubusercontent.com/nextcloud/vm/official/prep/prep_vm.sh -o /home/ncadmin/prep_vm.sh
        chmod +x /home/ncadmin/prep_vm.sh
        bash /home/ncadmin/prep_vm.sh
    fi
fi
