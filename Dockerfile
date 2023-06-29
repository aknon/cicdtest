# FROM node:lts-alpine

FROM node:16

# Create app directory
WORKDIR /var/usr/apps/cicdtestapp


COPY package*.json ./

RUN npm install

RUN nvm install 16

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "bin/www" ]