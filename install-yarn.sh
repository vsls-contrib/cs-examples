#!/bin/sh
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
curl -s https://deb.nodesource.com/setup_16.x | sudo bash
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt update
apt install -y nodejs
apt install -y yarn
yarn