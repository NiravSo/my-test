FROM nginx:latest
RUN echo "hello Nirav, Welcome" > /var/www/html/index.html
Expose 80
