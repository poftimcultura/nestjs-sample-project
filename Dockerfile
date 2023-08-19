# Use an official Node.js runtime as the base image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port your NestJS app will run on (change this to your app's port)
EXPOSE 3000

# Start the NestJS application
CMD ["npm", "run", "start:prod"]
