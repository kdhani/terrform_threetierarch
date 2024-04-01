#!/bin/bash

# Update packages
sudo yum update -y

# Install Java
sudo yum install java-1.8.0-openjdk -y

# Download and deploy the Java application (replace <your_application_url> with the actual URL)
sudo mkdir /opt/my-java-app
sudo wget -O /opt/my-java-app/myapp.jar <your_application_url>

# Create a systemd service for the Java application
cat <<EOF | sudo tee /etc/systemd/system/my-java-app.service
[Unit]
Description=My Java Application
After=network.target

[Service]
Type=simple
ExecStart=/usr/bin/java -jar /opt/my-java-app/myapp.jar
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target
EOF

# Enable and start the Java application service
sudo systemctl daemon-reload
sudo systemctl enable my-java-app
sudo systemctl start my-java-app
