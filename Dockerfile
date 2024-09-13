# Use an Nginx image to serve the HTML file
FROM nginx:alpine
COPY . /usr/share/nginx/html
