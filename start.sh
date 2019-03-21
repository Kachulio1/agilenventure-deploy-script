#!/usr/bin/env bash

set -o errexit
set -o pipefail

sudo apt-get -y update 

#node setup
sudo apt-get install -y curl python-software-properties
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo apt-get install -y nodejs

#app setup
git clone https://github.com/AgileVentures/WebsiteOne-FE && cd WebsiteOne-FE/
npm i
npm build

#start the server 
node server.js

#keep the server up
nohup node server.js &

 