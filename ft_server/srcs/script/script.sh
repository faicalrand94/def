apt-get update
apt-get install git wget nginx vim unzip php7.3-fpm php-mysql lsb-release gnupg php7.3-mbstring  -y

#phpmyadmin
cd /var/www/html/
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-all-languages.zip
unzip *.zip
rm *.zip
mv phpMyAdmin-5.0.1-all-languages phpmyadmin

#fix errors phpmyadmin
mkdir /var/www/html/phpmyadmin/tmp
chmod 777 /var/www/html/phpmyadmin/tmp
rm -rf  var/www/html/phpmyadmin/config.sample.inc.php
cp /config/config.inc.php /var/www/html/phpmyadmin/

#nginx
cd /etc/nginx/sites-available/
rm default
cp /config/default .
echo "daemon off;" >> /etc/nginx/nginx.conf

#mysql
cd /
wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
export DEBIAN_FRONTEND=noninteractive
echo "mysql-apt-config mysql-apt-config/select-server select mysql-5.7" | /usr/bin/debconf-set-selections
dpkg -i mysql-apt-config_0.8.14-1_all.deb
apt-get update
apt-get install mysql-server -y
chown -R mysql: /var/lib/mysql
service mysql start

#create user and database
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'faical'@'localhost' IDENTIFIED BY 'rand';";
mysql -u faical --password=rand -e "CREATE DATABASE wordpress;";
mysql -u faical --password=rand -e "FLUSH PRIVILEGES;";
mysql -u faical --password=rand wordpress < /config/faical.sql

#wordpress
cd /var/www/html/
wget https://wordpress.org/latest.zip
unzip *.zip
rm *.zip
cp /config/wp-config.php /var/www/html/wordpress/

#install supervisord
apt-get -y install supervisor;
mkdir -p /var/log/supervisor;
mkdir -p /etc/supervisor/conf.d;
mv /config/supervisord.conf /etc/supervisord.conf;

#ssl
mkdir -p /etc/nginx/ssl
cp /ssl_cert/cert.crt /etc/nginx/ssl
cp /ssl_cert/certprv.key /etc/nginx/ssl



