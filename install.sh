#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

echo "..::: welcome to install v2ray :::..."
echo ""
read -p "Please Enter Your Email :" emailAdr
read -p "Please Enter Your sub domain :" subDomain
echo -e "${yellow} Your email will be: ${emailAdr}${plain}"
echo -e " and subdomain : ${subDomain}${plain}"

apt update && apt upgrade -y
apt install curl socat -y
curl https://get.acme.sh | sh
~/.acme.sh/acme.sh --set-default-ca --server letsencrypt
~/.acme.sh/acme.sh --register-account -m ${emailAdr}
~/.acme.sh/acme.sh --issue -d ${subDomain} --standalone
~/.acme.sh/acme.sh --installcert -d ${subDomain} --key-file /root/private.key --fullchain-file /root/cert.crt
echo -e "${yellow}Your Private Key Stored in => /root/private.key & cert file path => /root/cert.crt${plain}"
echo -e "${green}Now We Are going to install 3 x-ui (v2ray) ...${plain}"

read -p "Do you want to install 3x-ui or no (old version) [y/n]? ": config_confirm
 if [[ "${config_confirm}" == "y" || "${config_confirm}" == "Y" ]]; then
    bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
else
    bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
fi
echo -e "${green}Running...${plain}"
