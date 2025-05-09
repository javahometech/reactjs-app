# Use Node.js as the base image
FROM node:18-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all files and build the React app
COPY . .
RUN npm run build

# Use a lightweight web server to serve the static files
FROM node:18-alpine
WORKDIR /app

# Install serve globally
RUN npm install -g serve

# Copy the build folder from the previous step
COPY --from=builder /app/dist /app

# Expose port 8000 inside the container
EXPOSE 8000

# Serve the app on port 8000
CMD ["serve", "-s", "/app", "-l", "8000"]
