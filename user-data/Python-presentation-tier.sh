#!/bin/bash

# Update and install necessary packages
sudo yum update -y
sudo yum install -y python3 git

# Clone the repository containing your Flask application (Presentation Tier)
git clone https://github.com/your_username/your_flask_app.git /home/ec2-user/your_flask_app

# Install Python dependencies for Flask app
cd /home/ec2-user/your_flask_app
sudo pip3 install -r requirements.txt

# Start the Flask application (Presentation Tier)
sudo nohup python3 app.py > /dev/null 2>&1 &
