FROM golang
COPY build/go-http-server /opt/go-http-server/build/go-http-server
COPY build/static /opt/go-http/server/build/static
ENTRYPOINT ["/opt/go-http-server/build/go-http-server"]
