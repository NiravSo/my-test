FROM ubuntu:latest
RUN apt-get update -y && apt-get install nfs-common -y
RUN apt-get install apache2 -y && service apache2 start
RUN mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport fs-ddd3509c.efs.ap-southeast-1.amazonaws.com:/ /var/www/html
COPY . /usr/share/nginx/html/
Expose 80
