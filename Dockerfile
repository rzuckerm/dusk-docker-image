FROM alpine:3.18.2

COPY DUSK_* /tmp/
RUN apk update && \
    apk add wget && \
    cd /usr/local/bin && \
    wget https://github.com/Jacobious52/Dusk-lang/releases/download/v$(cat /tmp/DUSK_VERSION)-alpha-linux-amd64/dusk && \
    chmod +x dusk && \
    apk del wget
