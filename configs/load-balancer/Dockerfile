FROM haproxy:2.0-alpine
RUN apk add iptables bash
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY enable-forward.sh /usr/bin/
COPY disable-forward.sh /usr/bin/
RUN chmod +x /usr/bin/enable-forward.sh \
    && chmod +x /usr/bin/disable-forward.sh
