#!/bin/bash

set -e

echo ==== Updating system ====
sudo apt-get update


echo ==== Installing numlockx ====
sudo apt-get install -y numlockx


echo ==== Installing git-gui, gitk and gitg ====
sudo apt-get install -y git-gui gitk gitg

echo [Desktop Entry] > ~/Desktop/gitgui.desktop
echo Name=Git GUI >> ~/Desktop/gitgui.desktop
echo Exec=git gui >> ~/Desktop/gitgui.desktop
echo Type=Application >> ~/Desktop/gitgui.desktop
echo Encoding=UTF-8 >> ~/Desktop/gitgui.desktop
echo Terminal=false >> ~/Desktop/gitgui.desktop
echo Categories=None; >> ~/Desktop/gitgui.desktop


echo ==== Installing Arudino IDE ====
wget https://downloads.arduino.cc/arduino-1.8.5-linuxarm.tar.xz
cd /usr/share
sudo tar -xf ~/arduino-1.8.5-linuxarm.tar.xz
cd arduino-1.8.5
./install.sh
cd ~
rm arduino-1.8.5-linuxarm.tar.xz


echo ==== Installing Arduino libraries ====
cd ~
mkdir -p Arduino/libraries

cd ~
wget https://bitbucket.org/teckel12/arduino-new-ping/downloads/NewPing_v1.8.zip
unzip NewPing_v1.8.zip -d ~/Arduino/libraries
rm NewPing_v1.8.zip

cd ~
wget https://github.com/mmurdoch/arduinounit/archive/v2.2.0.zip
unzip v2.2.0.zip -d ~/Arduino/libraries
rm v2.2.0.zip


echo ==== Downloading Datasheets ====
mkdir -p ~/Datasheets
#wget http://store.invensense.com/datasheets/invensense/MPU-6050_DataSheet_V3%204.pdf -P ~/Datasheets/
wget https://www.olimex.com/Products/Modules/Sensors/MOD-MPU6050/resources/RM-MPU-60xxA_rev_4.pdf -P ~/Datasheets/
wget http://www51.honeywell.com/aero/common/documents/myaerospacecatalog-documents/Defense_Brochures-documents/HMC5883L_3-Axis_Digital_Compass_IC.pdf  -P ~/Datasheets/
wget http://www.micropik.com/PDF/HCSR04.pdf -P ~/Datasheets/
