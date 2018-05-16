#!/bin/bash

set -e

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get -y install build-essential
sudo apt-get -y install nodejs

exit 0
