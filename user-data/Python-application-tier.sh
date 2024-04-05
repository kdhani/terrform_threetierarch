#!/bin/bash

# Update and install necessary packages
sudo yum update -y
sudo yum install -y python3 git

# Clone the repository containing your application tier code
git clone https://github.com/your_username/your_application_tier.git /home/ec2-user/your_application_tier

# Install Python dependencies for application tier
cd /home/ec2-user/your_application_tier
sudo pip3 install -r requirements.txt

# Start the application server (Application Tier)
sudo nohup python3 app.py > /dev/null 2>&1 &
