FROM httpd
LABEL Vendor="Kruemmelspalter" \
	Description="" \
	Version="0.0.1-1"
WORKDIR /usr/local/apache/htdocs
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Kruemmelspalter/kruemmelseite.git
