if [ ! -d "/var/mysql/lib/wordpress/" ]; then
	mkdir -p /var/mysql/lib/wordpress/
	service mysql start
	mysql -u root < tmp.sql	
	mysqladmin -u root password 11
	service mysql stop
fi
mysqld
