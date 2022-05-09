NAME=INCEPTION

all:
	@docker-compose -f srcs/docker-compose.yml up --build                      #add -d for free terminal
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
re : clean build
