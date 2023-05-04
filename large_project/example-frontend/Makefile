IMAGE_NAME=example-frontend

build:
	docker build . -t $(IMAGE_NAME)

run:
	docker run -d -p 127.0.0.1:7070:7070 $(IMAGE_NAME)

.PHONY: build run
