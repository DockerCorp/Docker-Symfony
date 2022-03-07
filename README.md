# Symfony
This Docker template will provide you with a complete environment for Symfony.

- PHP 8.1
- Composer
- Symfony CLI

## 🛠 Getting started
1. 🐳 Create and start container(s).
```bash
docker-compose up
# In case of customizing the Dockerfile you must use "--build" flag to rebuild image to apply changes.
docker-compose up --build
```

2. 🔌 SSH into app container.
```bash
docker-compose exec app sh
```

3. ⭐ Create a new Symfony project in current working directory.
```bash
symfony new --dir=. --no-git
```

4. ⚡ Restart container to start up local web server.
```bash
docker-compose restart app
```
