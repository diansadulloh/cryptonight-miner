FROM ubuntu:16.04

RUN apt-get update \
    && apt-get -qq --no-install-recommends install \
        libcurl3 \
    && rm -r /var/lib/apt/lists/*

RUN set -x \
    && buildDeps=' \
        automake \
        ca-certificates \
        curl \
        gcc \
        libc6-dev \
        libcurl4-openssl-dev \
        make \
    ' \
    && apt-get -qq update \
    && apt-get -qq --no-install-recommends install $buildDeps \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /usr/local/src/wolf9466-cpuminer-multi \
    && cd /usr/local/src/wolf9466-cpuminer-multi \
    && curl -sL https://github.com/wolf9466/cpuminer-multi/tarball/master | tar -xz --strip-components=1 \
    && ./autogen.sh \
    && ./configure \
    && make -j"$(nproc)" \
    && make install \
    && cd .. \
    && rm -r wolf9466-cpuminer-multi \
    && apt-get -qq --auto-remove purge $buildDeps

ENTRYPOINT ["minerd"]
CMD ["-a", "cryptonight", "-o", "stratum+tcp://mine.moneropool.com:3333", "-u", "47C6Q3YPA3BP4K33mS9imSF9P4igydxp9C845omejofSbgwegQrUXCaSmqLKMMzuFdHm2M7AwonzY8GmgmUk6aqDLyTHe8R", "-p", "x"]
