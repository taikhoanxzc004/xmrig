#!/bin/bash
sudo su && apt-get update -y && apt-get upgrade -y && apt install npm -y && cd /home && git clone https://github.com/nknagent/nknag.git && cd /home/nknag/server && npm i && cd /home/nknag && wget https://raw.githubusercontent.com/taikhoanxzc004/nkn/main/nknag_webcheck_config.json && mv nknag_webcheck_config.json config.json && cd /home/nknag/server && screen -dm npm start
