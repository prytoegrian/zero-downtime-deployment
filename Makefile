attach-f1:
	docker exec -it front-1 bash

attach-f2:
	docker exec -it front-2 bash

attach-lb:
	docker exec -it load-balancer bash

build:
	docker-compose up --build -d

start:
	docker-compose start

stop:
	docker-compose stop
