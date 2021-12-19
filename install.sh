#!/bin/bash


# update dan nano

opkg update && opkg install nano 

# Download file 

# wget https://raw.githubusercontent.com/iyan-ybae/argon-tema/main/fixcpu.txt
wget https://raw.githubusercontent.com/iyan-ybae/argon-tema/main/sysco
# wget https://raw.githubusercontent.com/iyan-ybae/argon-tema/main/luci-app-argon-config_0.8-beta_all.ipk
# wget https://raw.githubusercontent.com/iyan-ybae/argon-tema/main/luci-theme-argon_2.2.5-20200914_all.ipk


# install argon

# opkg install *.ipk

# # copy file passwall 

# cp -R /www/luci-static/material/passwall /www/luci-static/argon

# Fix cpu argon

# cat fixcpu.txt >> /usr/lib/lua/luci/view/themes/argon/footer.htm

# Ubah banner 

cat sysco > /etc/sysco

# install adguard

cd /tmp
opkg update
wget https://github.com/AdguardTeam/AdGuardHome/releases/download/v0.107.0-b.13/AdGuardHome_linux_arm64.tar.gz
mkdir /tmp/AdGuardHome
tar -xvf AdGuardHome_linux_arm64.tar.gz --strip-components=1 -C /tmp/
cd /tmp/AdGuardHome && ./AdGuardHome -s install
cd /tmp
wget https://github.com/rufengsuixing/luci-app-adguardhome/releases/download/1.8-11/luci-app-adguardhome_1.8-11_all.ipk
opkg install luci-app-adguardhome_1.8-11_all.ipk

