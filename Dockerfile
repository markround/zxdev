FROM z88dk/z88dk:nightly

LABEL Version="latest" \
      Maintainer="Mark Dastmalchi-Round (mark@markround.com)" \
      Description="A basic Docker container with ZX Spectrum cross-compiler tools (z88dk, pasmo and zmakebas)"

ENV PASMO_VERSION="0.5.4.beta2"

RUN apk add --no-cache git curl bash

RUN mkdir /build && \
  cd /build && \
  git clone https://github.com/markround/zmakebas.git && \
  cd zmakebas && \
  make zmakebas && \
  make install && \
  cd /build && \
  curl -o pasmo.tgz https://pasmo.speccy.org/bin/pasmo-${PASMO_VERSION}.tgz && \
  tar -xzvf pasmo.tgz && \
  cd pasmo-${PASMO_VERSION} && \
  ./configure && \
  make && \
  make install && \
  rm -rf /build
  
