build:
	docker compose -f docker-compose.yml build 

stop:
	docker compose -f docker-compose.yml down

start:
	docker compose -f docker-compose.yml up -d --build

restart: stop start

volume: stop
	docker volume prune -af

clean:
	docker system prune -af

fclean: stop clean

re: stop clean build