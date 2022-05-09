wp core download --path=wpclidemo.dev
cd wpclidemo.dev
wp config create --dbname=wpclidemo --dbuser=root --prompt=dbpass
wp db create
wp core install --url=wpclidemo.dev --title="WP-CLI" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org
wp plugin update --all
php-fpm7 -F -R