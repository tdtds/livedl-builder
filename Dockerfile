#
# Dockerfile for livedl
#
# mount /usr/local/bin to save livedl binary
# ex. docker run --rm -v $PWD:/usr/local/bin livedl-builder:latest
#
FROM golang:latest as builder
ENV CGO_ENABLED=1
ENV GOOS=linux
ENV GOARCH=amd64
WORKDIR /work
RUN go get github.com/gorilla/websocket && \
    go get golang.org/x/crypto/sha3 && \
	 go get github.com/mattn/go-sqlite3 && \
	 go get github.com/gin-gonic/gin && \
	 chmod go+w /work
COPY build.sh .
CMD ./build.sh
