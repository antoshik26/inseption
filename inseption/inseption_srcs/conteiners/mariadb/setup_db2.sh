if [ ! -d "var/mysql/lib/wordpress/" ]; then
	service mysql start
	mysql -u root < tmp.sql	
	mysqladmin -u root password 11
	service mysql stop
fi
mysqld
