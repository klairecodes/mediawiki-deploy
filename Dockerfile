FROM mediawiki:1.36.2
ENV MEDIAWIKI_BRANCH REL1_36

RUN git clone --depth 1 -b $MEDIAWIKI_BRANCH https://github.com/wikimedia/mediawiki-extensions-PluggableAuth.git; /var/www/html/w\
git clone --depth 1 -b $MEDIAWIKI_BRANCH https://github.com/wikimedia/mediawiki-extensions-OpenIDConnect.git; \
