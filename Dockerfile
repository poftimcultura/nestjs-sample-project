# Use an official Node.js runtime as the base image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the app dependencies
RUN npm install --only=production

# Copy the rest of the application code to the working directory
COPY . .

ENV ENVIRONMENT production
ENV PORT 8080

# Expose the port your NestJS app will run on (change this to your app's port)
EXPOSE 8080

# Start the NestJS application
CMD ["node", "dist/main.js"]
