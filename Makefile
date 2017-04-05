all: clean build run

clean:
	- docker stop flask-dockerized

build:
	docker build -t flask-dockerized:latest . 

run:
	docker run -d -p 80:5000 flask-dockerized
