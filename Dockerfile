FROM nginx:latest
COPY . /usr/local/nginx/html/
Expose 80
