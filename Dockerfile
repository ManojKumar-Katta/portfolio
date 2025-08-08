# Use the official Nginx image as base
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static assets
RUN rm -rf ./*

# Copy portfolio files to the container
COPY . ./

# Remove unnecessary files
RUN rm -f Dockerfile docker-compose.yml .dockerignore nginx.conf

# Copy custom Nginx configuration (optional)
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Add labels for better container management
LABEL maintainer="Katta Manoj Kumar <kattamanojkumar2005@gmail.com>"
LABEL description="Portfolio website for Katta Manoj Kumar"
LABEL version="1.0"

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
