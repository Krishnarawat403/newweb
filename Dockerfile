# Use a base image with your desired programming language and version
# For example, if you're using Node.js, you can use the official Node.js image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the backend source code to the container's working directory
COPY . /app


# Install dependencies
RUN npm install

# Expose the port on which your backend application will run
EXPOSE 5000

# Command to start the backend application
CMD ["npm", "start"]
