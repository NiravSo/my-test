FROM ubuntu:latest
RUN apt-get update -y && apt-get install apache2 -y
RUN service apache2 start
RUN rm -rf /var/www/html/*
RUN cp index.html /var/www/html/
Expose 80
