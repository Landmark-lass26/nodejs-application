# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install
# Copy the application code to the container
COPY . .

# Expose a port (optional, depending on your application)
EXPOSE 3000

# Define the command to run your application
CMD ["node", "app.js"]