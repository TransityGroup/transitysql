start:
	docker run --name sqlova -m 6GB -d -p "5050:5050" honda-sql

build:
	./fetch_models.sh
	docker build --build-arg CACHEBUST=$(date +%s) -t honda-sql .

stop:
	docker stop sqlova || echo ok
	docker kill sqlova || echo ok
	docker rm sqlova
