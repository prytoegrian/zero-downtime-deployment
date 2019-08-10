#!/usr/bin/env bash
set -e
iptables -t nat -D OUTPUT -p tcp --dport 8080 -j REDIRECT --to-port 80
iptables -t nat -D PREROUTING -p tcp --dport 8080 -j REDIRECT --to-port 80
