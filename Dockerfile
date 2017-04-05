FROM ubuntu:latest
MAINTAINER Jesse Cai "jcjessecai@gmail.com"

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

WORKDIR /app/src
ENTRYPOINT ["python"]
CMD ["server.py"]
