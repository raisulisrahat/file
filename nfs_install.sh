#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
fi

# Install NFS server
apt update
apt install -y nfs-kernel-server

# Create folder
mkdir /home/CTSlab

# Configure NFS exports
echo "/home/CTSlab 192.168.1.0/24(rw,sync,no_subtree_check)" >> /etc/exports

# Restart NFS server
systemctl restart nfs-kernel-server

# Display status
systemctl status nfs-kernel-server

# Firewall configuration (optional)
# Uncomment the following lines if you want to configure the firewall
# ufw allow from 192.168.1.0/24 to any port nfs
# ufw enable
# ufw status

echo "NFS server installation and configuration complete."
