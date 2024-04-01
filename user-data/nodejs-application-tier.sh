#!/bin/bash

sudo apt update -y

curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt-get install -y nodejs -y

sudo apt update -y

sudo npm install -g corepack -y

corepack enable

corepack prepare yarn@stable --activate --yes

sudo yarn global add pm2


""" ---type below in application server terminal-----

npm install 
npm install dotenv


git clone https://github.com/AnkitJodhani/2nd10WeeksofCloudOps.git

cd 2nd10WeeksofCloudOps/backend

vi .env


DB_HOST=book.rds.com
DB_USERNAME=admin
DB_PASSWORD="pass1"
PORT=3306

sudo pm2 start index.js --name "backendApi"


"""
