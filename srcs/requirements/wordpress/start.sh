wp core download --path=/var/www/html/wordpress
cd /var/www/html/wordpress
wp config create --dbname=wordpress --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=database:3306
wp db create
wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org --path=/var/www/html/wordpress
# wp core install --url=hgallien.42.fr --title=Adetu --admin_user=root --admin_password=root --admin_email=patate@frite.fr --skip-email --path=/var/www/html/wordpress
# wp user create user1 hiougo@hotmail.fr --path=/var/www/html/wordpress
wp plugin update --all
exec php-fpm7 -F -R
# if [ ! /var/www/html/wordpress/wpclidemo.dev/wp-config.php ] ; then
# 	wp core download --path=/var/www/html/wordpress
# 	cd /var/www/html/wordpress
# 	wp config create --dbname=wordpress --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=database:3306
# 	wp db create
# 	wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org
# 	wp plugin update --all
# fi
# exec php-fpm7 -F -R