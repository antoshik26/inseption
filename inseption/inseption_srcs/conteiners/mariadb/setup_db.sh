#!bin/bash

servise mysql start
mysql -e "CREATE USER '${MARIA_LOGIN}'@'localhost' identified by '${MARIA_PASS}';" &&\
mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;" &&\
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${MARIA_LOGIN}'@'%' IDENTIFIED BY '${MARIA_PASS}';" &&\
mysql -e "FLUSH PRIVILEGES;"
service mysql stop

mysqld
