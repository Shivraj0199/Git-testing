# Use Official nginx Image
FROM nginx:latest

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML code to server path
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
