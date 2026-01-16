FROM node:20-alpine

# Install http-server globally
RUN npm install -g http-server

# Set working directory
WORKDIR /app

# Copy all site files
COPY . .

# Expose port 8080
EXPOSE 8080

# Start http-server
CMD ["http-server", "-p", "8080"]

