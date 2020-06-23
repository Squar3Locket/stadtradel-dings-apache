FROM httpd
LABEL Vendor="Kruemmelspalter" \
	Description="" \
	Version="0.0.1-1"
WORKDIR /usr/local/apache/htdocs
RUN apt-get update && apt-get install -y git
RUN git remote add origin https://github.com/Kruemmelseite/stadtradel-dings-apache
RUN git pull
