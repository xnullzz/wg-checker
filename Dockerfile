FROM alpine:latest

RUN apk add --no-cache wireguard-tools iptables curl
