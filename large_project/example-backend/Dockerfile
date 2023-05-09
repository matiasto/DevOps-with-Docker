# Build stage
FROM golang:1.16-alpine AS build

WORKDIR /usr/src/app

RUN adduser -D -s /bin/sh appuser

COPY . .

RUN go mod tidy && \
    CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o server .

# Production stage
FROM scratch

COPY --from=build /etc/passwd /etc/passwd

COPY --from=build /usr/src/app/server /server

USER appuser

CMD ["/server"]

# image size: 17.1MB