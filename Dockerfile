FROM ubuntu:latest
MAINTAINER ibrahimsarwar814@gmail.com
RUN apt install -y httpd \
	zip \
	unzip
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page292/microo.zip .
RUN mv microo.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip microo.zip
RUN cp -rvf microo-html/* .
RUN rm -rf microo.zip  microo-html
CMD ["/usr/sbin/httpd", "-D" "FOREGROUND"]
EXPOSE 80
