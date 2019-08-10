#!/usr/bin/env bash
set -e
iptables -t nat -D OUTPUT -p tcp --dport 8888 -j REDIRECT --to-port 8080
iptables -t nat -D PREROUTING -p tcp --dport 8888 -j REDIRECT --to-port 8080
