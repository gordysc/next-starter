.DEFAULT_GOAL := help

COLOR_START=\033[0;32m
COLOR_END=\033[0m

########################
# Container commands
########################
restart:
	docker compose restart nodejs

kill:
	docker compose kill nodejs

logs:
	docker compose logs --follow

remove:
	docker compose rm --force nodejs

stop:
	docker compose stop nodejs

up:
	docker compose up --detach


########################
# Utility commands
########################
terminal:
	docker compose run --rm --interactive --entrypoint bash nodejs

help:
	@echo "Usage: make <target>"
	@echo ""

	@echo "$(COLOR_START)Container Commands$(COLOR_END)"
	@echo ""

	@echo "kill: Kill docker container"
	@echo "logs: Tail docker logs"
	@echo "remove: Remove docker container"
	@echo "stop: Stop docker container"
	@echo "up: Start docker containers"
	@echo ""

	@echo "$(COLOR_START)Utility Commands$(COLOR_END)"
	@echo ""

	@echo "terminal: Open bash terminal"
	@echo ""
