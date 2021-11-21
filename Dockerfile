FROM mediawiki:1.36.2
ENV MEDIAWIKI_BRANCH REL1_36

ENV PORT 8080

RUN sed -i 's/Listen 80/Listen '8080'/' /usr/local/apache2/conf/httpd.conf

RUN git clone --depth 1 -b $MEDIAWIKI_BRANCH https://github.com/wikimedia/mediawiki-extensions-PluggableAuth.git /var/www/html/w; \
