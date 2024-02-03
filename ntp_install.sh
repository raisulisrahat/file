#!/bin/bash

# Update package repositories and install NTP
sudo apt-get update
sudo apt-get install -y ntp

# Stop the NTP service
sudo systemctl stop ntp

# Configure NTP to use the Dhaka timezone
echo "Asia/Dhaka" | sudo tee /etc/timezone
sudo dpkg-reconfigure -f noninteractive tzdata

# Update the NTP configuration file
echo "server 0.asia.pool.ntp.org iburst" | sudo tee -a /etc/ntp.conf
echo "server 1.asia.pool.ntp.org iburst" | sudo tee -a /etc/ntp.conf
echo "server 2.asia.pool.ntp.org iburst" | sudo tee -a /etc/ntp.conf
echo "server 3.asia.pool.ntp.org iburst" | sudo tee -a /etc/ntp.conf

# Start the NTP service
sudo systemctl start ntp

# Enable the NTP service to start on boot
sudo systemctl enable ntp

echo "NTP server installation and configuration completed."