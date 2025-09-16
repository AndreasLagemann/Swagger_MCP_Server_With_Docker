# Use official Node.js LTS image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the app
COPY . .

# Expose port (change if your app uses a different port)
EXPOSE 3000

# Start the app (update if your entry point is different)
CMD ["node", "build/index.js"]
