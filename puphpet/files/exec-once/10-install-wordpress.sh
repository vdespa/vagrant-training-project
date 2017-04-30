#!/bin/bash

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

echo "+++++++++++++++++ Installing WordPress +++++++++++++++++"

cd /var/www/mywordpress.local/web

wp core download --allow-root

wp core config --dbname=mywordpress --dbuser=root --dbpass=123 --force --allow-root

wp core install --url=mywordpress.local --title=MyWordPress --admin_user=admin --admin_password=admin --admin_email=info@example.com --allow-root

echo "+++++++++++++++++ Done Installing WordPress! +++++++++++++++++"