all: build run

build:
	docker build -t flask-dockerized:latest . 

run:
	docker run -d -p 5000:5000 flask-dockerized
