From debian:buster

RUN apt-get update
RUN apt-get -y install php7.3
RUN apt-get -y install php-mysql
RUN apt-get -y install php-fpm
RUN apt-get -y install wget
RUN apt-get -y install curl
RUN apt-get -y install mariadb-client
RUN apt-get -y install vim

RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN	chmod +x wp-cli.phar
RUN	mv wp-cli.phar /usr/local/bin/wp
RUN echo "listen = 5000" >> /etc/php/7.3/fpm/pool.d/www.conf
RUN echo "access.log = /var/log/$pool.access.log" >> /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir -p /var/www/wordpress 
RUN chown -R  www-data:www-data /var/www/wordpress/
RUN chmod 777 /var/www/wordpress/
RUN mkdir -p /run/php/
COPY setup.sh /
RUN chmod 777 /setup.sh
WORKDIR /var/www/wordpress
EXPOSE 5000
ENTRYPOINT ["sh", "/setup.sh"]
