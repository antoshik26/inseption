#!bin/bash

service mysql start
mysql -e "CREATE USER 'dmadelei'@'localhost' identified by '11';" &&\
mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;" &&\
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'dmadelei'@'%' IDENTIFIED BY '11';" &&\
mysql -e "FLUSH PRIVILEGES;"
service mysql stop

mysqld
