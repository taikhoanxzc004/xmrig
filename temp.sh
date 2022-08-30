systemctl stop npool.service && rm -rf /etc/systemd/system/npool.service
cat > /etc/systemd/system/npool.service <<End-of-file
[Unit]
Description=npool server

[Service]
Type=simple
WorkingDirectory=/home/nkn/linux-amd64
ExecStart=/home/nkn/linux-amd64/npool --appkey musXpqbVjvusVdBs 
Restart=always
RestartSec=20
StartLimitInterval=0

[Install]
WantedBy=multi-user.target
End-of-file
sudo reboot
