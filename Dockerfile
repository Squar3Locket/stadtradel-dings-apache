FROM httpd
LABEL Vendor="Kruemmelspalter" \
	Description="" \
	Version="0.0.1-1"
WORKDIR /usr/local/apache/htdocs
RUN apt-get update && apt-get install wget
RUN wget https://raw.githubusercontent.com/Kruemmelseite/stadtradel-dings-apache/master/install.sh
RUN chmod +x install.sh
RUN ./install.sh
