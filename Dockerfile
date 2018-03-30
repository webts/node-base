FROM node:8.9.1-alpine

RUN apk add --no-cache --virtual .gyp \
        python \
        make \
        g++ 

RUN npm install @babel/cli @babel/core @babel/polyfill @babel/plugin-transform-object-assign 
RUN npm install @babel/plugin-proposal-class-properties @babel/preset-env @babel/preset-react @babel/preset-flow @babel/runtime
RUN npm install object-assign
RUN npm install  pm2
