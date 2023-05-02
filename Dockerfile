FROM centos:latest
MAINTAINER amitojha93
WORKDIR /var/www/html
ADD 'https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip' /var/www/html/
RUN yum install -y httpd 
RUN systemctl start httpd
RUN yum install -y unzip 
RUN unzip loxury.zip
RUN cp -rvf loxury/* /var/www/html
RUN rm -rf loxury loxury.zip
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80
