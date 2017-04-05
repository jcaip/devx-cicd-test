ID=$(docker ps -q --filter ancestor=flask_dockerized)

all: clean build run

clean:
	- docker stop $(ID)

build:
	docker build -t flask_dockerized:latest . 

run:
	docker run -d -p 80:5000 flask_dockerized
