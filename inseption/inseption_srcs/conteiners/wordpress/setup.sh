if [ ! -f /var/www/wordpress/wp_config.php ]; then
	wp core --allow-root download --locale=ru_RU --force --path='/var/www/wordpress'
		wp core config --allow-root --dbname=wordpress --path='/var/www/wordpress' --dbuser=dmadelei --dbpass=11 --dbhost=mariadb
	wp core install --allow-root --url='dmadelei.42.fr' --title='WordPress for Inception' --admin_user=root --admin_password=11 --admin_email="admin@admin.com" --path='/var/www/wordpress';
	wp user create --allow-root $WPU_1LOGIN user1@user.com --user_pass=$WPU_1PASS --role=author --path='/var/www/wordpress/';
fi
php-fpm7.3 --nodaemonize
