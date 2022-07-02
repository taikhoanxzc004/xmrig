#!/bin/bash
sudo su && sudo apt-get update && sudo apt install sshfs -y && sudo wget -O install.sh 'https://raw.githubusercontent.com/taikhoanxzc004/az/main/nkndinstall.sh'; sudo bash install.sh && reboot
