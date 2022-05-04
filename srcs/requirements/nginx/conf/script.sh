openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=GB/ST=London/L=Fulham/O=Local/OU=Development/CN=local.dev/emailAddress=email@local.dev" 
rm -rf /var/www/html/index.nginx-debian.html 
nginx -g "daemon off;"
