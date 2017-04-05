NAME=flask_dockerized

all: stop build run

stop:
	-docker ps | grep $(NAME) | awk '{ print $$1 }' | xargs docker kill

build:
	docker build -t $(NAME):latest . 

run:
	docker run -d -p 80:5000 $(NAME) 
