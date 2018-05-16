#!/bin/bash

set -e

sudo add-apt-repository -y ppa:ubuntu-lxc/lxd-stable

sudo apt-get -y update
sudo apt-get -y install golang

exit 0
