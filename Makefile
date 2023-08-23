.PHONY: up down build build-producer build-consumer

up:
	docker compose up --detach

down:
	docker-compose down

build: build-producer build-consumer

build-producer:
	@go build -o bin/producer ./cmd/producer

build-consumer:
	@go build -o bin/consumer ./cmd/consumer
