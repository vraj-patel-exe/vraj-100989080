# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that your app listens on (adjust if your app listens on a different port)
EXPOSE 3000

# Define environment variable (if required)
ENV NODE_ENV production

# Start the app using the main file (adjust if needed)
CMD ["node", "src/index.js"]
