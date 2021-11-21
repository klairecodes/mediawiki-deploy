FROM mediawiki:1.36.2
ENV MEDIAWIKI_BRANCH REL1_36

ENV PORT 8080

RUN sed -i 's/:80/:8080/' /etc/apache2/sites-enabled/000-default.conf

RUN git clone --depth 1 -b $MEDIAWIKI_BRANCH https://github.com/wikimedia/mediawiki-extensions-PluggableAuth.git /var/www/html/w; \
