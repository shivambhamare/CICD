# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the index.html file to the Nginx web directory
COPY index.html /usr/share/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
