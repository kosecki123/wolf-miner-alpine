FROM alpine:3.4

RUN apk add --update --virtual=build_dependencies build-base git automake autoconf curl-dev && \
    apk add --nocache libcurl && \
    git clone https://github.com/wolf9466/cpuminer-multi && \
    cd cpuminer-multi && \
    ./autogen.sh && ./configure && make && \
    apk del build_dependencies

WORKDIR /cpuminer-multi

CMD ["./minerd"]
