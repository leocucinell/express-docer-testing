# FIRST: Define which image to build from
FROM node:16

#Create directory to hold app code inside the virtural env
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

# Expose the PORT so we can connect
EXPOSE 8080

#Run the command to start the server
CMD [ "node", "server.js" ]