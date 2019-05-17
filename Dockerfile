FROM ubuntu:latest
RUN apt-get update -y && apt-get install httpd -y
RUN service httpd start
RUN echo "hello Nirav, Welcome" > /var/www/html/index.html
Expose 80
