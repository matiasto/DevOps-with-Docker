FROM node:16-alpine

WORKDIR /usr/src/app

RUN adduser -D -s /bin/sh appuser && \
    chown -R appuser:appuser /usr/src/app

COPY . .

RUN npm install && npm run build && npm install serve

USER appuser

CMD ["./node_modules/.bin/serve", "-s", "-l", "7070", "build"]
