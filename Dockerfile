# Use official Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --production

# Copy source code
COPY . .

# Expose the port
EXPOSE 3000

# Run the app
CMD ["node", "server.js"]