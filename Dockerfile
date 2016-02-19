FROM busybox

ADD ca-certificates.crt /etc/ssl/certs/
ADD release/imageproxy /
ADD run.sh /

RUN mkdir -p /var/log/imageproxy && \
    mkdir -p /var/cache/imageproxy && \
    chmod +x /run.sh

ENV CACHE_SIZE=5000 SECRET_TOKEN="secret"

CMD "/run.sh"
