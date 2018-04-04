FROM node:8.9.1-alpine

RUN apk add --no-cache --virtual .gyp \
        python \
        make \
        g++ 
WORKDIR /usr/src/app/

RUN npm install pm2 -g
