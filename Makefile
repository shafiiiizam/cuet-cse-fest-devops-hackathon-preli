include .env

.PHONY: help build-prod up-prod down-prod logs health-check

help:
	@echo "Usage: make [target]"

build-prod:
	docker compose -f docker/compose.production.yaml build

up-prod:
	docker compose -f docker/compose.production.yaml up -d

down-prod:
	docker compose -f docker/compose.production.yaml down

logs:
	docker compose -f docker/compose.production.yaml logs -f

health-check:
	curl http://localhost:5921/health
	curl http://localhost:5921/api/health

