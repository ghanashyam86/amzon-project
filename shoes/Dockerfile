FROM httpd:latest
RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf
#RUN service apache2 restart
COPY shoes.html /usr/local/apache2/htdocs/

EXPOSE 80

ENTRYPOINT ["httpd-foreground"]
