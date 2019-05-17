FROM ubuntu:latest
RUN apt-get update -y && apt-get install apache2 -y
RUN service apache2 start
RUN echo "hello Nirav, Welcome" > /var/www/html/index.html
Expose 80
