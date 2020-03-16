start:
	docker run --name sqlova --net=host -m 6GB -d -p "5050:5050" honda-sql

build:
	./fetch_models.sh
	docker build -t honda-sql .
shell:
	docker exec -it sqlova bash
stop:
	docker stop sqlova || echo ok
	docker rm sqlova

restart:
	docker stop sqlova || echo ok
	docker rm sqlova	
	docker run --name sqlova --net=host -m 6GB -d -p "5050:5050" honda-sql

rebuild:
	./fetch_models.sh
	docker build -t honda-sql .
	docker stop sqlova || echo ok
	docker rm sqlova	
	docker run --name sqlova --net=host -m 6GB -d -p "5050:5050" honda-sql