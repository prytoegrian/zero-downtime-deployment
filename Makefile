attach-f1:
	docker exec -it front-1 bash

attach-f2:
	docker exec -it front-2 bash

attach-lb:
	docker exec -it load-balancer bash

purge: stop
	docker rm load-balancer front-2 front-1
	docker rmi prytoegrian/load-balancer prytoegrian/front-2 prytoegrian/front-1

build:
	docker-compose up --build -d

start:
	docker-compose start

stop:
	docker-compose stop

enable-forward:
	docker exec load-balancer enable-forward.sh

disable-forward:
	docker exec load-balancer disable-forward.sh
