#!/bin/bash

set -e

sudo rm -rf /opt/franz
sudo mkdir -p /opt/franz
wget -qO- https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.18/franz_5.0.0-beta.18_amd64.deb | sudo tar xvz -C /opt/franz/

exit 0
