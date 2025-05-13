# Use Node.js official image
FROM node:16

# Set working directory
WORKDIR /app

# Copy package.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all other files
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD ["node", "server.js"]
