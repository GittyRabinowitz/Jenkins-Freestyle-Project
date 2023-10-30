# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

RUN npm i -D handlebars@4.5.0

# Bundle your app source
COPY . .

# Expose the port the app runs on
EXPOSE 4000

# Define environment variable for Node.js
ENV NODE_ENV=development

# Set the cmd for the application
CMD ["node", "index.js"]
