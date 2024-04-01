#!/bin/bash

sudo apt update -y

sudo apt install apache2 -y

curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt-get install -y nodejs -y

sudo apt update -y

sudo npm install -g corepack -y

corepack enable

corepack prepare yarn@stable --activate --yes

sudo yarn global add pm2


git clone https://github.com/AnkitJodhani/2nd10WeeksofCloudOps.git


npm install

npm run build

sudo cp -r build/* /var/www/html








