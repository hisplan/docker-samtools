FROM alpine:latest
MAINTAINER Jaeyoung Chun (chunj@mskcc.org)

LABEL maintainer="chunj@mskcc.org" \
      version="1.0"

ENV TOOL_VERSION 1.3.1

ADD https://github.com/samtools/samtools/releases/download/${TOOL_VERSION}/samtools-${TOOL_VERSION}.tar.bz2 /tmp/

RUN apk add --update --no-cache ncurses \
        && apk add --virtual=deps --update --no-cache ncurses-dev musl-dev g++ make zlib-dev \
        && cd /tmp/ && tar xjvf samtools-${TOOL_VERSION}.tar.bz2 \
        && cd /tmp/samtools-${TOOL_VERSION} && make \
        && mv /tmp/samtools-${TOOL_VERSION}/samtools /usr/bin \
        && rm -rf /var/cache/apk/* /tmp/* \
        && apk del deps

CMD ["--help"]

ENTRYPOINT ["/usr/bin/samtools"]

