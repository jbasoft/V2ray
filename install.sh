#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

echo "..::: welcome to install v2ray :::..."
echo ""
read -p "Please Enter Your Email :" emailAdr
read -p "Please Enter Your sub domain :" subDomain
echo -e "${yellow}Your email will be: ${emailAdr} and subdomain : ${subDomain}${plain}"
#install 
apt update && apt upgrade -y
apt install curl socat -y
~/.acme.sh/acme.sh --set-default-ca --server letsencrypt
~/.acme.sh/acme.sh --register-account -m ${emailAdr}
~/.acme.sh/acme.sh --issue -d ${subDomain} --standalone
~/.acme.sh/acme.sh --installcert -d ${subDomain} --key-file /root/private.key --fullchain-file /root/cert.crt
echo -e "${yellow} === Your Private Key Stored in => /root/private.key & cert file path => /root/cert.crt ${plain}"
echo -e "${green}Now We Are going to install 3 x-ui (v2ray) ..."
bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
