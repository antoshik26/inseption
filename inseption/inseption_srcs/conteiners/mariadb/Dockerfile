From debian:buster

RUN apt-get update
RUN apt-get -y install mariadb-server
RUN apt-get -y install mariadb-client
RUN apt-get -y install vim
RUN apt-get -y install procps

COPY setup_db.sh .
RUN chmod +x setup_db.sh

EXPOSE 3306

COPY 50-server.cnf /etc/mysql/mariadb.conf.d
RUN chmod 0444 /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT ["sh", "/setup_db.sh"]
