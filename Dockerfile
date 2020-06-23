FROM php:7.2-apache
LABEL Vendor="Kruemmelspalter" \
	Description="" \
	Version="0.0.1-1"
ARG domains
ARG webmaster
WORKDIR /var/www/html/
RUN apt-get update && apt-get install -y git
RUN if [ ! -z "$domains" ] && [ ! -z "$webmaster" ]; then apt-get update && apt-get install -y certbot python-certbot-apache ; fi ;
RUN git init
RUN git remote add origin https://github.com/Kruemmelseite/stadtradel-dings-apache
RUN git pull origin master
RUN if [ ! -z "$domains" ] && [ ! -z "$webmaster" ] ; then certbot --apache -d $domains --non-interactive --agree-tos -m $webmaster ; fi # else echo echo "not installing certbot" ; fi ;
