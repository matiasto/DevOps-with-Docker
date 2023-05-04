FROM node:16-alpine

EXPOSE 7070

RUN node -v && npm -v

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm run build

CMD npm install -g serve && serve -s -l 8080 build
