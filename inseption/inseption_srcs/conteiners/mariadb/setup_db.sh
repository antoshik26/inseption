#!bin/bash

service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;" &&\
mysql -e "CREATE USER IF NOT EXISTS 'dmadelei'@'localhost' IDENTIFIED by 'password';" &&\
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'dmadelei'@'localhost' IDENTIFIED BY 'password';" &&\
mysql -e "CREATE USER IF NOT EXISTS 'dmadelei'@'%' IDENTIFIED by 'password';" &&\
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'dmadelei'@'%' IDENTIFIED BY 'password';" &&\
mysql -e "FLUSH PRIVILEGES;"
mysqladmin -u root password ${DB_PASS}
service mysql stop

mysqld
