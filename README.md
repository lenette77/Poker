# Poker Backend — Spring Boot + Postgres (Learning Repo)

This repo guides your internship-focused learning by shipping a real service while you learn.

## Day 1 Goals
- Boot Spring Boot 3 (Java 17).
- Actuator: `/actuator/health`, `/actuator/metrics`.
- Infra ready: `docker compose up -d` for Postgres + Redis.
- CI: GitHub Actions builds & tests on every push.

## Run
```bash
./mvnw spring-boot:run
curl -s localhost:8080/actuator/health
```

## Infra (for later days)
```bash
docker compose up -d
docker ps
```

## Next steps
- Day 2: endpoints (`/accounts` create/get/deposit)
- Day 3: JPA+Flyway+transactions
- See the Excel planner for the full schedule.
