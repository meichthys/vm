
#!/bin/bash

# T&M Hansson IT AB © - 2020, https://www.hanssonit.se/

# shellcheck disable=2034,2059
true
# shellcheck source=lib.sh
. <(curl -sL https://raw.githubusercontent.com/nextcloud/vm/master/lib.sh)


# Get startup script
curl_to_dir https://raw.githubusercontent.com/nextcloud/vm/official/prep prep-nextcloud-start.sh /root
chmod +x /root/prep prep-nextcloud-start.sh

# Get service script
curl_to_dir https://raw.githubusercontent.com/nextcloud/vm/official/prep prep-nextcloud-start.service /etc/systemd/system
chmod 664 /etc/systemd/system/prep-nextcloud-start.service

reboot

exit 1
