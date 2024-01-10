# Use a base image with necessary configurations (e.g., nginx)
FROM nginx:latest

# Copy static website files to the nginx webroot
COPY . /usr/share/nginx/html

# Expose the default Nginx port
EXPOSE 80

# CMD to start Nginx
CMD ["nginx", "-g", "daemon off;"]
