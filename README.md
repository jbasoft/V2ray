# V2ray
v2ray Config

**Step1**
```
apt update && apt upgrade -y
```
 
**Step2**
<sub>
Install Apache 2 for check IP is accessible or not
 </sub>
```
apt install apache2
```

after Check it stop apache 2:

```
sudo service apache2 stop
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
~/.acme.sh/acme.sh --installcert -d host.mydomain.com --key-file /root/private.key --fullchain-file /root/cert.crt
```
```
bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
```
```
x-ui restart
```
