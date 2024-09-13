socat image, for use as sidecar to give legacy ip container images modern ipv6 capabaillities. 
ENV variables 
TO_PORT describes the port to forward the connection to, must be adapted to the pod.

optional Env variables 
IN_PORT descibe the port to listen to. 
TO_HOST describes to hostname to forward the conenction to, defaults to localhost. 
IN_PROTO defaults to TCP6 
OUT_PROTO defaults to TCP4

