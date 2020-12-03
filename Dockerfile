# Use Google base image for NodeJS
#FROM launcher.gcr.io/google/nodejs
FROM node:current-alpine

# Copy application code.
COPY . /app/

# Change the working directory
WORKDIR /app

# Install dependencies.
RUN npm install

# Start the Express app
CMD ["node", "server.js"]