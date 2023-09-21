# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of your application source code to the container
COPY . .

# Expose a port for your Node.js application
EXPOSE 8080

# Define the command to run your Node.js application
CMD [ "node", "app.js" ]
