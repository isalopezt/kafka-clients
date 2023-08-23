.PHONY: up down

up:
	docker compose up --detach

down:
	docker-compose down
