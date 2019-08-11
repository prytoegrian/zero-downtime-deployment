FROM haproxy:2.0-alpine
RUN apk add iptables bash
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
# COPY syslog.conf /etc/syslog.conf
# RUN chmod 777 /etc/syslog.conf
# COPY enable-forward.sh /usr/bin/
# COPY disable-forward.sh /usr/bin/
# RUN chmod +x /usr/bin/enable-forward.sh \
#    && chmod +x /usr/bin/disable-forward.sh \
#    && touch /var/log/haproxy.log \
#    && chmod 777 /var/log/haproxy.log \
#    && touch /var/log/messages.log \
#    && chmod 777 /var/log/messages.log \
#    && touch /run/haproxy.sock \
#    #&& ln -s /run/systemd/journal/dev-log /dev/log
