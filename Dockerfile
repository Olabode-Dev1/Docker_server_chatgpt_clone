# Use a specific Node version for stability
FROM node:16-alpine

# Set the working directory
WORKDIR /home/ubuntu/gpt/chat-gpt-clone

# Copy package.json and package-lock.json (if it exists) for dependency installation
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Define the default command to run when the container starts
CMD ["npm", "start"]
