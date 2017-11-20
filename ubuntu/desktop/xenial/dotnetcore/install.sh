#!/bin/bash

set -e

sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-get update
sudo apt-get -y --allow-unauthenticated install dotnet-sdk-2.0.2

exit 0
