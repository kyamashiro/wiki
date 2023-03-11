start:
	docker compose -f "compose.yml" up -d --build

stop:
	docker compose stop

remove:
	docker compose stop
	docker compose rm

bash:
	docker exec -it --user 1000 go bash

mysql/bash:
	docker exec -it mysql bash

migrate/up:
	docker exec -ti go sh -c "sql-migrate up -env=development"

"migrate/down":
	docker exec -ti go sh -c "sql-migrate down -env=development"

migrate/test:
	sql-migrate up -env=test

migrate/status:
	docker exec -ti go sh -c "sql-migrate status"
