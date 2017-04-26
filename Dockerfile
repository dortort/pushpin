FROM fanout/pushpin:latest

RUN \
  mkdir /etc/pushpin/conf && \
  sed -i \
    -e 's/routesfile=.*/routesfile=conf\/routes/' \
    /etc/pushpin/pushpin.conf

COPY ./routes /etc/pushpin/conf/

CMD ["sh", "-c", "/usr/bin/pushpin $PARAMS"]
