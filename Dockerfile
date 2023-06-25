###################################################
# create build image
FROM node:18.10.0-slim as build

# set work directory
WORKDIR /usr/src/app

# copy package file
COPY package*.json ./

# install project dependencies
RUN npm install

# copy project files
COPY . .

# build app for production
RUN npm run build

###################################################
# create run image
FROM node:18.10.0-slim

# install simple http server
RUN npm install -g http-server

# set work directory
WORKDIR /usr/src/app

# copy project files
COPY --from=build /usr/src/app/dist ./dist

# serve file via http-server
CMD ["http-server", "dist", "-a", "0.0.0.0"]