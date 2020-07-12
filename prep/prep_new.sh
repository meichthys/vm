
#!/bin/bash

# T&M Hansson IT AB © - 2020, https://www.hanssonit.se/

# shellcheck disable=2034,2059
true
# shellcheck source=lib.sh
. <(curl -sL https://raw.githubusercontent.com/nextcloud/vm/master/lib.sh)

# Must be root
root_check

# Get startup script
curl_to_dir https://raw.githubusercontent.com/nextcloud/vm/official/prep rc.local /etc
chmod +x /root/prep-nextcloud-start.sh

# Get service script # https://linuxconfig.org/how-to-run-script-on-startup-on-ubuntu-20-04-focal-fossa-server-desktop
curl_to_dir https://raw.githubusercontent.com/nextcloud/vm/official/prep prep-nextcloud-start.service /etc/systemd/system
chmod 664 /etc/systemd/system/prep-nextcloud-start.service

reboot

exit 1
