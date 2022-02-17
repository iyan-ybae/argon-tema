cd /tmp
opkg update
wget https://github.com/AdguardTeam/AdGuardHome/releases/download/v0.107.0-b.13/AdGuardHome_linux_arm64.tar.gz
mkdir /tmp/AdGuardHome
tar -xvf AdGuardHome_linux_arm64.tar.gz --strip-components=1 -C /tmp/
cd /tmp/AdGuardHome && ./AdGuardHome -s install
cd /tmp
wget https://github.com/rufengsuixing/luci-app-adguardhome/releases/download/1.8-11/luci-app-adguardhome_1.8-11_all.ipk
opkg install luci-app-adguardhome_1.8-11_all.ipk
