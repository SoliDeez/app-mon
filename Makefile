COMPOSE_FILE_APP = -f docker-compose.app.yml
COMPOSE_FILE_MON = -f docker-compose.mon.yml
COMPOSE_FILE_ALL = $(COMPOSE_FILE_APP) $(COMPOSE_FILE_MON)

.PHONY: up

up:

	@echo "all serices start"
	docker compose $(COMPOSE_FILE_ALL) up -d

.PHONY: down

down:

	@echo "all serices stop"
	docker compose $(COMPOSE_FILE_ALL) down

.PHONY: up-log

up-log:

	@echo "all serices start with logs in console"
	docker compose $(COMPOSE_FILE_ALL) up

.PHONY: restart

restart: down up

	@echo "restart all services"

.PHONY: up-app

up-app:

	@echo "start only app wordpress"
	docker compose $(COMPOSE_FILE_APP) up -d

.PHONY: up-mon

up-mon:

	@echo "start only monitoring service"
	docker compose $(COMPOSE_FILE_MON) up -d
