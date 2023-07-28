# Use an official Node.js LTS (Long Term Support) image as the base
FROM node:lts-alpine

# Set a custom working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install 

# Copy the rest of the application code to the working directory
COPY . .

# Expose the default Node.js port (3000)
EXPOSE 3000

# Start the Node.js application
CMD [ "node", "index.js" ]
