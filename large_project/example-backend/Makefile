IMAGE_NAME=example-backend

all: 
	make build
	make run

build:
	docker build . -t $(IMAGE_NAME)

run:
	docker run -d -p 127.0.0.1:8080:8080 $(IMAGE_NAME)

.PHONY: all build run
