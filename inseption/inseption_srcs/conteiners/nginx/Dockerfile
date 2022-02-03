From debian:buster

RUN apt-get update
RUN apt-get install -y nginx vim net-tools procps

COPY nginx.conf /etc/nginx/sites-available/default
