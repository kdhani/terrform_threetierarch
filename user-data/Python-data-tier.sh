#!/bin/bash

# Update and install necessary packages
sudo yum update -y
sudo yum install -y mysql-server

# Start MySQL service
sudo systemctl start mysqld

# Enable MySQL service to start on boot
sudo systemctl enable mysqld

# Secure MySQL installation (optional)
# sudo mysql_secure_installation

# Note: The above command will prompt you to set a root password, remove anonymous users, disallow remote root login, remove the test database, and reload privilege tables. You can choose to run it interactively or comment it out if not needed.

# (Optional) Open MySQL port in the firewall
sudo firewall-cmd --zone=public --add-port=3306/tcp --permanent
sudo firewall-cmd --reload
