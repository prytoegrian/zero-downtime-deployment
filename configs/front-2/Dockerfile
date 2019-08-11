FROM httpd:2-alpine
COPY index-main.html htdocs/main/index.html
COPY index-backup.html htdocs/backup/index.html
COPY vhost.conf conf/extra/httpd-vhosts.conf

RUN echo "Listen 8080" >> conf/httpd.conf
RUN echo "Include conf/extra/httpd-vhosts.conf" >> conf/httpd.conf
