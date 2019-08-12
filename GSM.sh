#!/bin/bash
#/This script should be run by typing '. ./GSM.sh'

sudo apt-get update
sudo add-apt-repository main
sudo add-apt-repository universe
sudo add-apt-repository restricted
sudo add-apt-repository multiverse
sudo apt install git
sudo apt install python-numpy python-scipy python-scapy
sudo apt install gnuradio gnuradio-dev git cmake autoconf libtool pkg-config g++ gcc make libc6 \ libc6-dev libcppunit-1.14-0 libcppunit-dev swig doxygen liblog4cpp5v5 liblog4cpp5-dev python-scipy \ gr-osmosdr libosmocore libosmocore-dev
sudo apt-get install libc6-dev
sudo apt-get install gr-osmosdr
sudo apt-get install libosmocore libosmocore-dev
sudo apt-get install python-docutils
git clone https://git.osmocom.org/gr-gsm
cd gr-gsm
mkdir build
cd build
sudo cmake ..
sudo make 
sudo make install
sudo ldconfig
git clone https://github.com/Oros42/IMSI-catcher.git
sudo apt-get install wireshark tshark
wget http://git.osmocom.org/gr-gsm/plain/apps/grgsm_livemon.grc
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module
grcc -d . grgsm_livemon.grc
mv grgsm_livemon.py grgsm_livemon
sudo apt-get install automake autoconf libhackrf-dev
git clone https://github.com/scateu/kalibrate-hackrf
cd kalibrate-hackrf/
./bootstrap
./configure
make
sudo make install
