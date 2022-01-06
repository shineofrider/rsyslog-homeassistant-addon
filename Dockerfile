ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk update \
  && apk add --no-cache rsyslog \
  && rm -rf /var/cache/apk/*

COPY rsyslog.conf /etc/rsyslog.conf
COPY run.sh /run.sh

RUN chmod a+x /run.sh /run.sh
CMD [ "/run.sh" ]
