#!/bin/bash

# Enable systemd-resolved to start at boot
sudo systemctl enable systemd-resolved

# Start systemd-resolved service
sudo systemctl start systemd-resolved

# Restore the original symlinked resolv.conf
# Assuming you backed it up before changing it
# For example, if you backed it up as resolv.conf.bak
sudo mv /etc/resolv.conf.bak /etc/resolv.conf

echo "systemd-resolved has been enabled, and the original resolv.conf has been restored."