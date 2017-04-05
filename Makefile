NAME=flask_dockerized

all: clean build run

clean:
	- docker stop $(docker ps -q --filter ancestor=$(NAME))

build:
	docker build -t $(NAME):latest . 

run:
	docker run -d -p 80:5000 $(NAME) 
