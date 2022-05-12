NAME=INCEPTION

all:
	@docker-compose -f srcs/docker-compose.yml up --build						#add -d for free terminal
down:
	@docker-compose -f srcs/docker-compose.yml down
clean:
	@docker stop $$(docker ps -a -q)
	@docker rm $$(docker ps -a -q)
	@docker system prune -f
prune :
	@docker system prune -f --all
build :
	@docker-compose -f srcs/docker-compose.yml up --build
wordpress : 
	@docker exec -it wordpress bash
nginx :
	@docker exec -it nginx bash
db :
	@docker exec -it database bash
re : clean build