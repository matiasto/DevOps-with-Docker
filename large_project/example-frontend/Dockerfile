FROM node:16-alpine

RUN adduser -D -s /bin/sh appuser

RUN node -v && npm -v

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm run build && npm install serve

RUN chown -R appuser:appuser /usr/src/app

USER appuser

CMD ["./node_modules/.bin/serve", "-s", "-l", "7070", "build"]
