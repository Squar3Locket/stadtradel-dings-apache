FROM httpd
LABEL Vendor="Kruemmelspalter" \
	Description="" \
	Version="0.0.1-1"
WORKDIR /var/www/
RUN wget https://raw.githubusercontent.com/Kruemmelseite/stadtradel-dings-apache/master/install.sh
RUN ./install.sh
