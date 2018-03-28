FROM node:8.9.1-alpine

RUN apk add --no-cache --virtual .gyp \
        python \
        make \
        g++ 

RUN npm install -g pm2
