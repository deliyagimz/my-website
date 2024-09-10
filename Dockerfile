# Use an official NGINX image from the Docker Hub
FROM nginx

# Remove the default NGINX website and copy your website files
RUN rm -rf /usr/share/nginx/html/*

# Copy the current directory contents (your website files) to NGINX's web directory
COPY . /usr/share/nginx/html

# Expose port 80 to allow external access to the container
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]

