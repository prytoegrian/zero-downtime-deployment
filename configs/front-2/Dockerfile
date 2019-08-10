FROM httpd:2-alpine
COPY front-2/index.html htdocs/index.html

# Listen to 8080 for backup
# RUN echo "Listen 8080" >> conf/httpd.conf
# RUN echo "Include conf/extra/httpd-vhosts.conf" >> conf/httpd.conf

CMD ["httpd-foreground"]
