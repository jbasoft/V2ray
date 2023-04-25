# V2ray
v2ray Config

**Step1**
```
apt update && apt upgrade -y
```
 
**Step2**
Install Apache 2 for check IP is accessible or not
```
apt install apache2
```

**Step3**
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
bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
```
```
x-ui restart
```
