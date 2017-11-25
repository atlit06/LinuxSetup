#!/bin/bash

set -e

sudo rm -rf /opt/godot
sudo mkdir -p /opt/godot
wget https://downloads.tuxfamily.org/godotengine/2.1.4/Godot_v2.1.4-stable_x11.64.zip
unzip Godot_v2.1.4-stable_x11.64.zip
rm Godot_v2.1.4-stable_x11.64.zip
sudo mv Godot_v2.1.4-stable_x11.64 /opt/godot/godot
sudo chmod +x /opt/godot/godot

wget https://godotengine.org/themes/godotengine/assets/logo.svg
sudo mv logo.svg /opt/godot/icon.svg

sudo bash -c "cat > /usr/share/applications/godot.desktop << _EOF_
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Name=Godot
Comment=Create different games
Exec=/opt/godot/godot
Icon=/opt/godot/icon.svg
Terminal=false
Type=Application
Categories=Development; Games;
Name[en_US]=godot.desktop
GenericName[en_US]=Game development platform
Comment[en_US]=Create different games!
_EOF_"
sudo chmod +x /usr/share/applications/godot.desktop

exit 0
