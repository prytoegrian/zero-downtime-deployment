attach1:
	docker exec -it front-1 bash

attach2:
	docker exec -it front-2 bash

build:
	docker-compose up --build -d

start:
	docker-compose start

stop:
	docker-compose stop
