#SSL(https) from letsencrypt

> AMAZON AMI instances (ec2)

### a. install packages
- core packages

```
sudo yum install -y gcc gcc-c++ openssl openssl-devel git \
libffi-devel python-devel openssl-devel
```  

- letsencrypt

```
sudo git clone https://github.com/letsencrypt/letsencrypt \
/opt/letsencrypt
```

### b. make sure you stop your web services
```
sudo service nginx stop
```

### c. upgrade urllib3 & generate your certificates
```
cd /opt/letsencrypt
sudo pip install urllib3[secure] --upgrade
./letsencrypt-auto certonly --standalone --debug
```

> Make sure to open 443 port or else

### d. generate a stronger Diffie-Hellman ephemeral parameter

```
cd /etc/ssl/certs
sudo openssl dhparam -out dhparam.pem 3072
```

### e. nginx configurations 
```
server {
  listen 443 ssl;
  ssl on;

  
  ssl_certificate /etc/letsencrypt/live/chappie.27ae60.com/fullchain.pem;
  ssl_certificate_key /etc/letsencrypt/live/chappie.27ae60.com/privkey.pem;
  ssl_dhparam /etc/ssl/certs/dhparam.pem;

    
  ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
  ssl_prefer_server_ciphers on;
  ssl_ciphers AES256+EECDH:AES256+EDH;
  sl_session_cache shared:SSL:20m;

  add_header Strict-Transport-Security "max-age=31536000; includeSubdomains;";

  access_log /var/log/nginx/access.log;

  gzip on;
  gzip_types *;
  gzip_proxied any;

  location / {
    proxy_set_header Host $http_host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_pass       http://chappie_servers;
    proxy_redirect   off;
  }
}
```

### f. start your web services
```
  sudo service nginx start
```

[src](http://docs.redash.io/en/latest/misc/letsencrypt.html)
