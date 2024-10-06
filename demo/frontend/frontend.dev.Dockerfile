# Use an official Node runtime as the base image
FROM node:22.9.0

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Set environment variable to development
ENV NODE_ENV=development

# Start the application with hot reloading
CMD ["yarn", "dev"]
