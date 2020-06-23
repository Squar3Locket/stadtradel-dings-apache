FROM httpd
LABEL Vendor="Kruemmelspalter" \
	Description="" \
	Version="0.0.1-1"
ARG domains
ARG webmaster
WORKDIR /usr/local/apache/htdocs
RUN apt-get update && apt-get install -y git certbot python-certbot-apache
RUN git init
RUN git remote add origin https://github.com/Kruemmelseite/stadtradel-dings-apache
RUN git pull origin master
RUN certbot --apache -d $domains --non-interactive --agree-tos -m $webmaster
