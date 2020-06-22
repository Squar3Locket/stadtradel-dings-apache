FROM httpd
LABEL Vendor="Kruemmelspalter" \
	Description="" \
	Version="0.0.1-1"
WORKDIR /var/www/
RUN wget https://raw.githubusercontent.com/Kruemmelspalter/kruemmelseite/master/get.sh
RUN ./install.sh