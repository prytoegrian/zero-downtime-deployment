#!/usr/bin/env bash
set -e
iptables -t nat -A OUTPUT -p tcp --dport 8888 -j DOCKER_OUTPUT --to-port 80
iptables -t nat -A PREROUTING -p tcp --dport 8888 -j REDIRECT --to-port 80
