wp core download --path=/var/www/html/wordpress
cd /var/www/html/wordpress
wp config create --dbname=wordpress --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=database:3306
wp db create
wp core install --url=localhost --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org --path=/var/www/html/wordpress
# wp user create user1 efarin@hotmail.fr --path=/var/www/html/wordpress
wp plugin update --all
exec php-fpm7 -F -R