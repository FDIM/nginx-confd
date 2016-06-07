FROM nginx:1.9

MAINTAINER Alexander Lukichev

ADD https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 /bin/confd
RUN chmod +x /bin/confd

COPY confd /etc/confd

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]


