From debian:buster

RUN apt-get update
RUN apt-get -y install mariadb-server
RUN apt-get -y install mariadb-client
RUN apt-get -y install vim
RUN apt-get -y install procps

COPY setup_db.sh .
RUN chmod +x setup_db.sh

EXPOSE 3306

COPY serv_db.cnf /etc/mysql/
RUN chmod 777 /etc/mysql/serv_db.cnf

ENTRYPOINT ["sh", "/setup.sh"]
