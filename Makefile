
   
SRC= srcs
VOLUMES = /home/aali-mou/data

all: up
add_dirs:
	mkdir -p /home/aali-mou/data/db
	mkdir -p /home/aali-mou/data/wp

add_host:
	echo "127.0.1.1       aali-mou.42.fr" >> /etc/hosts

stop:
	docker compose -f srcs/docker-compose.yml stop 

restart:
	docker compose -f srcs/docker-compose.yml restart

build:
	docker compose -f srcs/docker-compose.yml build 
up:
	docker compose -f srcs/docker-compose.yml up -d

down : 
	docker compose -f srcs/docker-compose.yml  down

clean: down
	docker system prune -a -f
	docker image prune -f
	docker volume prune -f
	docker network prune -f
	docker images -q | xargs -r docker rmi
	docker volume ls -q | xargs -r  docker volume rm

fclean: clean
