#### Install Docker:
 - (manual) Docker install link: [Docker](https://docs.docker.com/engine/install/ubuntu/) - встановлення вручну по ссилці на документацію
 - (auto) Встановлення за допомогою sh скрипту - **install_script/docker_install.sh**

#### Install Docker Compose:
 - (manual) Docker Compose install link: [Docker Compose](https://docs.docker.com/compose/install/) - встановлення вручну по ссилці на документацію
 - (auto) Встановлення за допомогою sh скрипту - **install_scripts/docker_compose_install.sh**

#### Project Structure template:
 - Орієнтовна структура проекту(розміщення файлів): **project_template_structure.txt**

#### Set up project:
1. Збілдити образи контейнерів на основі докерфайлів (для фронтенду і бекенду)
```sh
docker-compose build
```
2. Встановлення yarn для webpack 
```sh
docker-compose run --rm web yarn install
```
4. Створення БД
```sh
docker-compose run --rm web rake db:create
```
5. Запуск міграції
```sh
docker-compose run --rm web rake db:migrate
```
6. 
 - a) Запустити проект
```sh
docker-compose up
```
 - b) Запустити проект у фоновому режимі
```sh
docker-compose up -d
```
7. Зупинити всі запущені контейнери проекту
```sh
docker-compose down
```
### Additional commands: 
1. Оновлення гемів при додаванні/видаленні гемів у Gemfile
```sh
docker-compose run --rm web bundle install
```
2. Запустити rails консоль в окремому контейнері
```sh
docker-compose run --rm web rails c
```