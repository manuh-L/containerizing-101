FROM    redhat/ubi8
LABEL   author="vClusterIT.net"
RUN     dnf install httpd httpd-tools -y
EXPOSE  80
WORKDIR /var/www/html
COPY    index.html image.svg ./
RUN     chmod 444 ./index.html
RUN     chmod 444 ./image.svg
CMD     ["/usr/sbin/httpd","-D","FOREGROUND"]