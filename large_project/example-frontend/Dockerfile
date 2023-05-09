# Build stage
FROM node:16-alpine AS build

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm run build

# Production stage
FROM alpine:latest

WORKDIR /usr/src/app

RUN adduser -D -s /bin/sh appuser && \
    chown -R appuser:appuser /usr/src/app && \
    apk add --no-cache nodejs npm && \
    npm install -g serve

COPY --from=build /usr/src/app/build ./build

ENV PATH="/usr/src/app/node_modules/.bin:${PATH}"

USER appuser

CMD ["serve", "-s", "-l", "7070", "build"]
