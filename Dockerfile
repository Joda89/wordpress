FROM wordpress

COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod -R 777 /etc/apache2/
RUN chmod -R 777 /usr/src/wordpress/


ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
