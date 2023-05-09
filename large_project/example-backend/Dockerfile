FROM golang:1.16-alpine

RUN adduser -D -s /bin/sh appuser

WORKDIR /usr/src/app

COPY . .

RUN go build

RUN chown -R appuser:appuser /usr/src/app

USER appuser

CMD ["./server"]
