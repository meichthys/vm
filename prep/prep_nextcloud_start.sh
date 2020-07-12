[Unit]
After=network.service

[Service]
ExecStart=/etc/prep_nextcloud_start.sh

[Install]
WantedBy=default.target
