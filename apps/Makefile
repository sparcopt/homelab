run:
	@docker compose -f docker-compose-infra.yaml up -d
	@docker compose -f docker-compose-monitoring.yaml up -d

run-infra:
	@docker compose -f docker-compose-infra.yaml up -d

run-monitoring:
	@docker compose -f docker-compose-monitoring.yaml up -d

clean:
	@docker compose -f docker-compose-monitoring.yaml down
	@docker compose -f docker-compose-infra.yaml down