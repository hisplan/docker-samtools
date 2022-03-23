FROM ubuntu:20.04

LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)" \
      version.samtools="1.13" \
      source.samtools="https://github.com/samtools/samtools/releases/tag/1.13"

ENV SAMTOOLS_VERSION 1.13

# update package manager & build essentials
RUN apt-get update \
    && apt-get install --yes build-essential

# install dependency required by samtools
RUN apt-get install --yes wget libncurses5-dev zlib1g-dev libbz2-dev liblzma-dev

# install samtools
RUN cd /tmp \
    && wget https://github.com/samtools/samtools/releases/download/${SAMTOOLS_VERSION}/samtools-${SAMTOOLS_VERSION}.tar.bz2 \
    && tar xvjf samtools-${SAMTOOLS_VERSION}.tar.bz2 \
    && cd samtools-${SAMTOOLS_VERSION} \
    && ./configure --prefix=/usr/local \
    && make \
    && make install \
    && cd / && rm -rf /tmp/samtools-${SAMTOOLS_VERSION}

ENTRYPOINT ["/usr/local/bin/samtools"]
CMD ["--help"]
