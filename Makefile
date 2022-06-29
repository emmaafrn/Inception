NAME=INCEPTION

DATA := $(HOME)/data
WP_DIR := $(DATA)/wp_volume
DB_DIR := $(DATA)/db_volume
DIRS := $(WP_DIR) $(DB_DIR)

all: $(DIRS)
	@docker-compose -f srcs/docker-compose.yml --env-file srcs/.env up --build
down:
	@docker-compose -f srcs/docker-compose.yml down
clean:
	@docker stop $$(docker ps -a -q)
	@docker rm $$(docker ps -a -q)
	@docker system prune -f 
	@docker volume rm srcs_db_volume
	@docker volume rm srcs_wp_volume
fclean: clean
	sudo rm -rf $(DATA)
prune:
	@docker system prune -f --all
build: $(DIRS)
	@docker-compose -f srcs/docker-compose.yml --env-file srcs/.env up --build
wordpress:
	@docker exec -it wordpress bash
nginx:
	@docker exec -it nginx bash
db:
	@docker exec -it database bash
re: clean build

$(WP_DIR):
	mkdir -p $@

$(DB_DIR):
	mkdir -p $@

.PHONY: all, down, clean, prune, build, wordress, nginx, db, re