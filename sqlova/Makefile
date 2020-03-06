start:
	docker run --name sqlova -d -p "5050:5050" honda-sql

build:
	./fetch_models.sh
	docker build -t honda-sql .

stop:
	docker stop sqlova || echo ok
	docker kill sqlova || echo ok
	docker rm sqlova
