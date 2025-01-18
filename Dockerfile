# Use the official Node.js image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json  ./
RUN npm install

# Copy the rest of your application files
COPY ./src/index.js /app/index.js

# Expose the port your app will run on
EXPOSE 32767

# Start the application
CMD ["npm", "start"]
