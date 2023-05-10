Since I had nothing better, I chose the example express app. 

Before:
```Dockerfile
FROM node:16

COPY . .

RUN npm install

CMD node index.js
```

After:
```Dockerfile
FROM node:16-alpine

WORKDIR /app

RUN adduser -D -s /bin/sh appuser && \
    chown -R appuser:appuser /app

COPY . .

RUN npm install

USER appuser

CMD ["node", "index.js"]
```
