#!/bin/bash

set -e

install=$(cat $(dirname $0)/../$1/install.config)
if [ "$install" != "y" ]
  then
    exit 0
fi

chmod +x $(dirname $0)/../$1/install.sh
./$(dirname $0)/../$1/install.sh

exit 0
