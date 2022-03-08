# Symfony
This Docker template will provide you with a complete environment for Symfony.

- PHP 8.1
- Composer
- Symfony CLI

## Documentation
* [Create a new Symfony project](#create-a-new-symfony-project)
  - [🐳 Create and start container(s)](#-create-and-start-containers)
  - [🔌 SSH into app container](#-ssh-into-app-container)
  - [⭐ Create a new Symfony project in current working directory](#-create-a-new-symfony-project-in-current-working-directory)
  - [⚡ Restart container to start up local web server](#-restart-container-to-start-up-local-web-server)
* [Import an existing Symfony project](#import-an-existing-symfony-project)
  - [📦 Copy existing Symfony project in app directory](#-restart-container-to-start-up-local-web-server)
  - [🐳 Create and start container(s)](#-create-and-start-containers-1)

## Create a new Symfony project
### 🐳 Create and start container(s)
```bash
docker-compose up
# In case of customizing the Dockerfile you must use "--build" flag to rebuild image to apply changes.
docker-compose up --build
```

### 🔌 SSH into app container
```bash
docker-compose exec app sh
```

### ⭐ Create a new Symfony project in current working directory
```bash
symfony new --dir=. --no-git
```

### ⚡ Restart container to start up local web server
```bash
docker-compose restart app
```

## Import an existing Symfony project
### 📦 Copy existing Symfony project in app directory
> Create "app" directory

> Copy existing Symfony project in "app" directory

### 🐳 Create and start container(s)
```bash
docker-compose up
# In case of customizing the Dockerfile you must use "--build" flag to rebuild image to apply changes.
docker-compose up --build
```
