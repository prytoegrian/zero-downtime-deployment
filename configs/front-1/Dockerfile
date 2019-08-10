FROM httpd:2-alpine
COPY front-1/index-main.html htdocs/main/index.html
COPY front-1/index-backup.html htdocs/backup/index.html
COPY front-1/vhost.conf conf/extra/httpd-vhosts.conf

RUN echo "Listen 8080" >> conf/httpd.conf
RUN echo "Include conf/extra/httpd-vhosts.conf" >> conf/httpd.conf
# RUN chown -R www-data: htdocs/

CMD ["httpd-foreground"]
