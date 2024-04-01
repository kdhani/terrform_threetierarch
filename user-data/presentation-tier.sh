#!/bin/bash

# Update packages
sudo yum update -y

# Install web server (e.g., Apache HTTP Server)
sudo yum install httpd -y

# Start Apache service
sudo systemctl start httpd

# Enable Apache service to start on boot
sudo systemctl enable httpd
