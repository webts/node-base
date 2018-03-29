FROM node:8.9.1-alpine

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

ENV PATH=$PATH:/home/node/.npm-global/bin # optionally if you want to run npm global bin without specifying path

RUN apk add --no-cache --virtual .gyp \
        python \
        make \
        g++ 

# Fix bug https://github.com/npm/npm/issues/9863
RUN cd $(npm root -g)/npm \
  && npm install fs-extra \
  && sed -i -e s/graceful-fs/fs-extra/ -e s/fs\.rename/fs.move/ ./lib/utils/rename.js

RUN npm install -g pm2

