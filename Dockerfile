FROM alpine:latest
LABEL maintainer="npastorale@gmail.com"

RUN apk update && \
    apk --no-cache add rsync

COPY rsyncd.conf /etc/rsyncd.conf

CMD ["rsync", "--no-detach", "--daemon"]