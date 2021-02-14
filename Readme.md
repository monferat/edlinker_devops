#### Install Docker:
 - (manual) Docker install link: [Docker](https://docs.docker.com/engine/install/ubuntu/) - встановлення вручну по ссилці на документацію
 - (auto) Встановлення за допомогою sh скрипту - **install_script/docker_install.sh**

#### Install Docker Compose:
 - (manual) Docker Compose install link: [Docker Compose](https://docs.docker.com/compose/install/) - встановлення вручну по ссилці на документацію
 - (auto) Встановлення за допомогою sh скрипту - **install_scripts/docker_compose_install.sh**

#### Project Structure template:
 - Орієнтовна структура проекту(розміщення файлів): **project_template_structure.txt**

#### Set up project

#### Frontend:
1. Збілдити образи контейнерів на основі докерфайлів
```sh
docker-compose build
```
2. 
 - a) Запустити проект
```sh
docker-compose up
```
 - b) Запустити проект у фоновому режимі
```sh
docker-compose up -d
```
3. Зупинити всі запущені контейнери проекту
```sh
docker-compose down
```

#### Backend:

##### Preparation:

Додати рядок 
```ruby
  # Disable yarn integrity
  config.webpacker.check_yarn_integrity = false
```
у файл **/edlinker-backend/config/environments/development.**


1. Збілдити образи контейнерів на основі докерфайлів
```sh
docker-compose build
```
2. Створення БД
```sh
docker-compose run --rm backend rake db:create
```
3. Запуск міграції
```sh
docker-compose run --rm backend rake db:migrate
```
4. 
 - a) Запустити проект
```sh
docker-compose up
```
 - b) Запустити проект у фоновому режимі
```sh
docker-compose up -d
```
5. Зупинити всі запущені контейнери проекту
```sh
docker-compose down
```

#### Additional commands (бекенд): 
1. Оновлення гемів при додаванні/видаленні гемів у Gemfile
```sh
docker-compose run --rm backend bundle install
```
2. Запустити rails консоль в окремому контейнері
```sh
docker-compose run --rm backend rails c
```
