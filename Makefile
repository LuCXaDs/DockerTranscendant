build:
	docker compose -f docker-compose.yml build 

stop:
	docker compose -f docker-compose.yml down

start:
	docker compose -f docker-compose.yml up -d --build

restart: stop start

volume: stop
	docker volume prune -af

image: stop
	docker images prune -a

network: stop
	docker network rm dockertranscendant_default

clean: stop volume image

re: stop clean build