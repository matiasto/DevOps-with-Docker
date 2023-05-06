FROM node:16-alpine

RUN node -v && npm -v

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm run build

CMD npm install -g serve && serve -s -l 7070 build
