FROM alpine
RUN apk add --no-cache apcupsd openssh-client
COPY apcupsd.conf doshutdown /etc/apcupsd/

VOLUME ["/etc/apcupsd/apcupsd.conf", "/root/.ssh"]

CMD ["apcupsd", "-b"]
