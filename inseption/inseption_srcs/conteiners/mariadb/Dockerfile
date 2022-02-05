From debian:buster

RUN apt-get update
RUN apt-get -y install mariadb-server
RUN apt-get -y install mariadb-client
RUN apt-get -y install vim
RUN apt-get -y install procps

COPY setup_db.sh /
RUN chmod 777 setup_db.sh
COPY setup_db2.sh /
RUN chmod 777 setup_db2.sh
COPY tmp.sql /
RUN chmod 777 tmp.sql

EXPOSE 3306
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY 50-server.cnf /etc/mysql/mariadb.conf.d
RUN chmod 777 /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT ["sh", "/setup_db2.sh"]
