Compose_file=./inseption_srcs/conteiners/docker-compose.yml

all	:		build_and_start


build_and_start	:
		@ docker-compose -f $(Compose_file) up -d --build
		@ sleep 5

start	:
		@ docker-compose -f $(Compose_file) start
		@ sleep 5

stop	:
		@ docker-compose -f $(Compose_file) stop
		@ sleep

doun	:
		@ docker-compose -f $(Compose_file) doun
		@ sleep

ps	:
		@ docker-compose -f $(Compose_file) ps

re:	stop build_and_start

.PHONY:	build_and_start start stop ps re
