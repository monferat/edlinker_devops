FROM node:14.15.4-alpine

WORKDIR /frontend

ENV PATH /frontend/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /frontend/package.json
# add app
COPY . /frontend

EXPOSE 4200

RUN npm install
