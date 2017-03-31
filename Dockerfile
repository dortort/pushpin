FROM fanout/pushpin:latest

CMD ["sh", "-c", "/usr/bin/pushpin $PARAMS"]
