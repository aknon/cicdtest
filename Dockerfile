FROM node:16

# Create app directory
WORKDIR /var/usr/apps/cicdtestapp


COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 4000
CMD [ "node", "bin/www" ]