# Define the base image
FROM --platform=linux/amd64 node:lts-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose the app port
EXPOSE 3000

# Start the app
CMD [ "npm", "run", "start" ]
