FROM node:14.15.4-alpine

WORKDIR /edlinker-frontend

ENV PATH /edlinker-frontend/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /edlinker-frontend/package.json
RUN npm install
RUN npm install -g @angular/cli@11.1.4

# add app
COPY . /edlinker-frontend

EXPOSE 4200

# start app
CMD ng serve --host 0.0.0.0