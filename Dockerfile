# Using the official Node.js image as the base image
FROM node:16

# Setting the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Running the application
CMD ["npm", "start"]