FROM centos:7
RUN yum update -y
RUN yum install httpd -y
COPY index.html /var/www/html/indext.html
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
