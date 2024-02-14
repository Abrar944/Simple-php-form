# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the current directory (i.e., the location of the Dockerfile) into the container
COPY . /usr/share/nginx/html

# Change the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Replace the default Nginx configuration with a custom one
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose the Nginx default port
EXPOSE 3000

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
