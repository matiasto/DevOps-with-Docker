FROM golang:1.16-alpine

WORKDIR /usr/src/app

RUN adduser -D -s /bin/sh appuser && \
    chown -R appuser:appuser /usr/src/app

COPY . .

RUN go build

USER appuser

CMD ["./server"]
