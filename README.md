# Symfony
Symfony 6 Docker environment (PHP 8.1, Composer, Symfony CLI)

## 🛠 Run services
```bash
docker-compose up
```

## 🛠 Build image & Run services
```bash
docker-compose up --build
```

## 🔌 SSH into service
```bash
# docker-compose exec <service> <command>
docker-compose exec app sh
```

## 🔄 Check Symfony requirements
```bash
symfony check:requirements
```