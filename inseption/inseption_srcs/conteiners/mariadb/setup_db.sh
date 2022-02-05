#!bin/bash

service mysql start
mysql -u root "CREATE DATABASE IF NOT EXISTS wordpress;" &&\
mysql -u root "CREATE USER IF NOT EXISTS 'dmadelei'@'localhost' IDENTIFIED by 'password';" &&\
mysql -u root "GRANT ALL PRIVILEGES ON *.* TO 'dmadelei'@'localhost' IDENTIFIED BY 'password';" &&\
mysql -u root "CREATE USER IF NOT EXISTS 'dmadelei'@'%' IDENTIFIED by 'password';" &&\
mysql -u root "GRANT ALL PRIVILEGES ON *.* TO 'dmadelei'@'%' IDENTIFIED BY 'password';" &&\
mysql -u root "FLUSH PRIVILEGES;"
mysqladmin -u root password password
service mysql stop

mysqld
