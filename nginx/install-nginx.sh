apt-get update
apt-get -y upgrade
apt-get autoremove
apt-get -y install nginx
cd /etc/nginx/sites-enabled
sed '1,/HTTPS/d' default | sed 's/^#//' >> default
sed -i 's:cert.pem;:/etc/nginx/ssl/nginx.crt;:' default
sed -i 's:cert.key;:/etc/nginx/ssl/nginx.key;:' default
mkdir /etc/nginx/ssl
cd /etc/nginx/ssl
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt -subj "/C=US/ST=test/L=test/O=test/OU=test/CN=test.com"
service nginx restart
