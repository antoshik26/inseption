Compose_file=./inseption_srcs/conteiners/docker-compose.yml

all	:		build_and_start


build_and_start	:
		@ docker-compose -f $(Compose_file) up -d --build
		@ sleep 5

start	:
		@ docker-compose -f $(Compose_file) start
		@ sleep 5
		@ docker-compose -f $(Compose_file) logs

stop	:
		@ docker-compose -f $(Compose_file) stop
		@ sleep 5

down	:
		@ docker-compose -f $(Compose_file) down
		@ sleep 5

ps	:	
		@ docker-compose -f $(Compose_file) ps

logs	:	
		@ docker-compose -f $(Compose_file) logs

clean:
	yes 'y' | docker builder prune 
fclean:
	yes 'y' | docker system prune
	sudo rm -rf /root/data/wp/*
	sudo rm -rf /root/data/maria/*
	

re:	stop build_and_start
fre:	clean re

.PHONY:	build_and_start start stop ps re down logs
