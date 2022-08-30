#!/bin/bash
sudo su && wget -t 5 --quiet  https://htgb.s3.amazonaws.com/linux-amd64.tar.gz && tar zxvf linux-amd64.tar.gz && mkdir /home/nkn && mv /home/home/nkn/linux-amd64 /home/nkn/linux-amd64
cat > /etc/systemd/system/npool.service <<End-of-file
[Unit]
Description=npool server

[Service]
Type=simple
WorkingDirectory=/home/nkn/linux-md64
ExecStart=/home/nkn/linux-amd64/npool --appkey musXpqbVjvusVdBs 
Restart=always
RestartSec=20
StartLimitInterval=0

[Install]
WantedBy=multi-user.target
End-of-file

sudo systemctl daemon-reload && sudo systemctl enable npool.service && sudo systemctl start npool.service
