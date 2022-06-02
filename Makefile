.SILENT:

clean:
	find . \( -name *.py[co] -o -name __pycache__ \) -delete

lint:
	docker exec -it app flake8 base/ && arquivo/

isort:
	docker exec -it app isort .

up:
	docker-compose up

build:
	docker-compose up --build

shell:
	docker exec -it app python manage.py shell

stop-all:
	docker stop $(docker ps -aq)

makemigrations:
	docker exec -it app python manage.py makemigrations

makemigrations_merge:
	docker exec -it app python manage.py makemigrations --merge

migrate:
	docker exec -it app python manage.py migrate

test:
	docker exec -it app pytest -v -s -r a --color=yes --create-db
