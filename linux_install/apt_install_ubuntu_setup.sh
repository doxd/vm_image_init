#!/bin/bash
apt update
apt install -y vim ncat wget curl rustc cargo 
apt install -y gcc mingw-w64
apt install -y vlc youtube-dl 
apt install -y chromium-browser terminator 
apt install -y tor torbrowser-launcher
apt install -y aircrack-ng
apt install -y mlocate tree macchanger jq
apt install -y openjdk-14-jdk secure-delete
apt install -y wireshark-gtk
apt clean
apt autoremove --purge -y
echo [*] sudo usermod -a -G wireshark <username>
