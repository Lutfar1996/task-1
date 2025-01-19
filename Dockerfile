# Use the Node.js 16 image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy only package.json and yarn.lock first (for caching dependencies)
COPY package.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn install

# Copy all application files into the container
COPY . .

# Set the working directory inside the container to /app/src
WORKDIR /app/src

# Expose the port the application runs on
EXPOSE 3000

# Run the application
CMD ["node", "index.js"]
