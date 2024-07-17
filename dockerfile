# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the Docker image
WORKDIR /usr/src/app

# Copy package.json and package-lock.json into the image
COPY package*.json ./

# Install the application's dependencies inside the Docker image
RUN npm install

# Copy the rest of the application code into the image
COPY . .

# Expose port 3000 for the application
EXPOSE 3000

# Define the command to run the application
CMD [ "node", "index.js" ]
