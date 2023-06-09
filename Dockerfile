FROM ubuntu:latest
MAINTAINER ibrahimsarwar814@gmail.com
RUN apt update -y
RUN apt install -y apache2 \
	wget \
	zip \
	unzip
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page292/microo.zip .
RUN mv microo.zip /var/www/html/
WORKDIR /var/www/html
RUN sudo unzip microo.zip
RUN sudo cp -rvf microo-html/* .
RUN sudo rm -rf microo.zip  microo-html
CMD ["/usr/sbin/httpd", "-D" "FOREGROUND"]
EXPOSE 80
