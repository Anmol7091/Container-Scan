# Use an official Node runtime as a parent image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and install deps
COPY package.json ./
RUN npm ci --only=production

# Copy app
COPY server.js ./

# Expose port and run
EXPOSE 3000
CMD ["node", "server.js"]
