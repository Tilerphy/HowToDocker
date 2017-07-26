FROM node:slim

WORKDIR /docker/process

ADD . /docker/process

RUN npm install express

EXPOSE 80

ENV NAME nodejs_test

CMD ["node", "index.js"]
