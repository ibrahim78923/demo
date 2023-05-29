FROM centos:latest
MAINTAINER ibrahimsarwar814@gmail.com
RUN yum install -y httpd \
	zip \
	unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/microo.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip microo.zip
RUN cp -rvf microo-html/* .
RUN rm -rf microo.zip  microo-html
CMD ["/usr/sbin/httpd", "-D" "FOREGROUND"]
EXPOSE 80
