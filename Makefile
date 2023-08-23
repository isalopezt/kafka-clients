.PHONY: up down deps build build-producer build-consumer

up:
	docker compose up --detach

down:
	docker-compose down

deps:
	@go mod vendor

build: build-producer build-consumer

build-producer:
	@go build -o bin/producer ./cmd/producer

build-consumer:
	@go build -o bin/consumer ./cmd/consumer
