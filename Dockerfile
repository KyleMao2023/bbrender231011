FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"
ADD config.json /opt/blist/data/
VOLUME /opt/blist/data/
WORKDIR /opt/blist/
COPY entrypoint.sh /entrypoint.sh
COPY install.sh /install.sh
RUN chmod +x /entrypoint.sh /install.sh; \
  /install.sh

ENV PUID=0 PGID=0 UMASK=022
EXPOSE 8192 6800
ENTRYPOINT [ "/entrypoint.sh" ]
