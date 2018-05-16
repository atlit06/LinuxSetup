#!/bin/bash

set -e

sudo apt-get -y install openssh-server
sudo systemctl restart ssh || sudo restart ssh

exit 0
