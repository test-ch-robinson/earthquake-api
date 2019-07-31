FROM node:10

# Add the current working folder as a mapped folder at /user/src/app
ADD . /usr/src/app

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

EXPOSE 3000
CMD [ "node", "index.js" ]