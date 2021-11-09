export COMPOSE_PROJECT_NAME=clickhouse

up:
	docker-compose up --build --force-recreate --renew-anon-volumes -d

down:
	docker-compose down --volumes --remove-orphans

ps:
	docker-compose ps

client:
	docker-compose exec server clickhouse-client

shell:
	docker-compose exec server /bin/bash

log-tail:
	docker-compose exec server tail -F /var/log/clickhouse-server/clickhouse-server.log
