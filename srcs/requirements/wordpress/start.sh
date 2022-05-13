if [ ! /var/www/html/wordpress/wpclidemo.dev/wp-config.php ] ; then
	wp core download --path=./wpclidemo.dev
	cd wpclidemo.dev
	wp config create --dbname=wordpress --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=database:3306
	wp db create
	wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org
	wp plugin update --all
fi
exec php-fpm7 -F -R