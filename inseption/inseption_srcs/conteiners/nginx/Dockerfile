From debian:buster

RUN apt-get update
RUN apt-get install -y nginx openssl vim net-tools procps

COPY nginx.confc /etc/nginx/sites-available/default

RUN ls -s /etc/nginx/sites/available/default /etc/nginx/sites/available/default

RUN mkdir /etc/nginx/ssl
opensll req newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/dmadelei.42.fr.crt -keyout /etc/nginx/ssl/demadelei.42.fr.key 
RUN chmod 777 /etc/nginx/ssl/*
RUN chmod 777 -R /var/www
RUN chown -R www-data:www-data /var/www

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "deamon off;"]
