# V2ray
v2ray config helper

**dynamic setup**
```
bash <(curl -Ls https://raw.githubusercontent.com/jbasoft/V2ray/main/install.sh)
```
 
**Or Manual Setup**
```
apt update && apt upgrade -y
```
```
apt install curl socat -y
```
```
curl https://get.acme.sh | sh
```
```
~/.acme.sh/acme.sh --set-default-ca --server letsencrypt
```
```
~/.acme.sh/acme.sh --register-account -m xxxx@xxxx.com
```
```
~/.acme.sh/acme.sh --issue -d host.mydomain.com --standalone
```
```
~/.acme.sh/acme.sh --installcert -d host.mydomain.com --key-file /root/private.key --fullchain-file /root/cert.crt
```
```
bash bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
```
or
```
bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
```
```
x-ui enable
```
