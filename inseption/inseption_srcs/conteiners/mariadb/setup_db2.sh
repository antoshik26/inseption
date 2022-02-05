if [ ! -d "var/mysql/lib/wordpress/" ]; then
	service mysql start
	sudo mysql -u root < tmp.sql	
	sudo mysqladmin -u root password 11
	service mysql stop
fi
mysqld
