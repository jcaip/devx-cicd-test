
all: clean build run

clean:
	docker stop $(docker ps -q --filter ancestor=flask_dockerized )

build:
	docker build -t flask_dockerized:latest . 

run:
	docker run -d -p 80:5000 flask_dockerized
