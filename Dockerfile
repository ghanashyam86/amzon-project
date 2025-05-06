FROM httpd:latest
RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf
#RUN service apache2 restart
COPY index.html /usr/local/apache2/htdocs/

#change the permission of index.html file
RUN chmod 644 /usr/local/apache2/htdocs/index.html
EXPOSE 80

ENTRYPOINT ["httpd-foreground"]
