FROM temporalio/server:latest

USER root

COPY ./start-temporal-server.sh /etc/temporal/start-temporal-server.sh
RUN chmod -R 755 /etc/temporal/start-temporal-server.sh
RUN chown -R temporal /etc/temporal/start-temporal-server.sh

RUN apk add --update-cache \
    jq \
    && rm -rf /var/cache/apk/*

USER temporal

ENTRYPOINT [ "/etc/temporal/start-temporal-server.sh" ]