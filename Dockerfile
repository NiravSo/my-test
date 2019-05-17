FROM centos:latest
RUN yum update -y && yum install httpd
RUN service httpd start
RUN echo "hello Nirav, Welcome" > /var/www/html/index.html
Expose 80
