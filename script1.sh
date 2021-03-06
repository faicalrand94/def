apt-get update
apt-get install git wget nginx vim unzip php7.3-fpm php-mysql lsb-release gnupg php7.3-mbstring -y
cd /var/www/html/
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-all-languages.zip
unzip phpMyAdmin-5.0.1-all-languages.zip
rm phpMyAdmin-5.0.1-all-languages.zip
mv phpMyAdmin-5.0.1-all-languages phpmyadmin
cd /etc/nginx/sites-available/
rm default
git clone https://github.com/faicalrand94/def.git
mv ./def/def default
cp ./def/default .
rm -rf ./def

#cp /srcs/default /etc/nginx/sites-available/

wget https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
export DEBIAN_FRONTEND=noninteractive
echo "mysql-apt-config mysql-apt-config/select-server select mysql-5.7" | /usr/bin/debconf-set-selections
dpkg -i mysql-apt-config_0.8.14-1_all.deb
apt-get update
apt-get install mysql-server -y
chown -R mysql: /var/lib/mysql
service mysql start
service nginx start
service php7.3-fpm start
####
##mysql -u root -p

mysql -u root -e "CREATE USER 'reda'@'localhost' IDENTIFIED BY 'reda'";
mkdir /var/www/html/phpmyadmin/tmp
chmod 777 /var/www/html/phpmyadmin/tmp

mv /var/www/html/phpmyadmin/config.sample.inc.php /var/www/html/phpmyadmin/reda.php

rm -rf /var/www/html/phpmyadmin/reda.php

cp /red/config.inc.php /var/www/html/phpmyadmin/

service mysql restart
service nginx restart
service php7.3-fpm restart
