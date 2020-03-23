start:
	sudo docker run --name sqlova --net=host --env-file=.env -m 6GB -d -p "8000:8000" honda-sql

build:
	sudo ./fetch_models.sh
	sudo docker build -t honda-sql .
shell:
	sudo docker exec -it sqlova bash
stop:
	sudo docker stop sqlova || echo ok
	sudo docker rm sqlova

restart:
	sudo docker stop sqlova || echo ok
	sudo docker rm sqlova
	sudo docker run --name sqlova --net=host -m 6GB -d -p "5050:5050" honda-sql

rebuild:
	sudo ./fetch_models.sh
	sudo docker build -t honda-sql .
	sudo docker stop sqlova || echo ok
	sudo docker rm sqlova
	sudo docker run --name sqlova --net=host -m 6GB -d -p "5050:5050" honda-sql
	sudo docker logs sqlova -f

logs:
	sudo docker logs sqlova -f
