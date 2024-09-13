#!/bin/bash
podman create \
--replace \
--name=xivtest \
--ip=10.88.0.3 \
--sysctl net.ipv4.ip_forward=1 \
--sysctl net.ipv4.conf.all.route_localnet=1 \
--net=podman \
--cap-add=NET_RAW,NET_ADMIN \
-i quay.io/shingonati0n/xivomega:latest /bin/sh