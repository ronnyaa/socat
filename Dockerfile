#!/usr/bin/env -S docker build . --tag=ronnyaa/socat --file
FROM alpine:latest

LABEL URL https://github.com/ronnyaa
LABEL description "socat image, for use as sidecar to give legacy ip container images modern ipv6 capabaillities. \
TO_PORT describes the port to forward the connection to, must be adapted to the pod. \
IN_PORT descibe the port to listen to. \
TO_HOST describes to hostname to forward the conenction to, defaults to localhost on tcp4."

RUN apk add --update socat

ENV IN_PROTO=TCP6 IN_PORT=8080 TO_PROTO=TCP4 TO_HOST=localhost TO_PORT=8000 

USER nobody
CMD socat -d -d -d $IN_PROTO-LISTEN:$IN_PORT,fork,su=nobody $TP_PROTO:$TO_HOST:$TO_PORT
