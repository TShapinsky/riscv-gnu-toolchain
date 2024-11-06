FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN set -eux; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    ca-certificates \
    xz-utils \
    # Configure Deps
    autoconf \
    gcc \
    g++ \
    gawk \
    curl \
    # Build Dependencies
    make \
    git \
    texinfo \
    bison \
    flex \
    bzip2 \
    zlib1g-dev \
    python3 \
    libgmp-dev \
    libmpfr-dev \
    libexpat-dev \
    # LLVM Build Dependencies
    cmake \
    # Multilib build dependencies
    libmpc-dev \
    #
    # autoconf -
    # automake
    # autotools-dev\
    # curl -
    # python3 -
    # python3-pip\
    # libmpc-dev\
    # libmpfr-dev -
    # libgmp-dev -
    # gawk -
    # build-essential\
    # bison -
    # flex -
    # texinfo -
    # gperf\
    # libtool\
    # patchutils\
    # bc\
    # zlib1g-dev -
    # libexpat-dev -
    # git -
    # ninja-build\
    # cmake\
    # libglib2.0-dev\
    # expect\
    # device-tree-compiler\
    # python3-pyelftools\
    # libslirp-dev
  ; \
  rm -rf /var/lib/apt/lists/*
RUN curl -fsL https://github.com/ccache/ccache/releases/download/v4.10.2/ccache-4.10.2-linux-x86_64.tar.xz | tar xJv --strip-components 1 -C /usr/bin ccache-4.10.2-linux-x86_64/ccache
RUN set -eux; \
    ln -s $(command  -v ccache) /usr/local/bin/gcc; \
    ln -s $(command  -v ccache) /usr/local/bin/g++; \
    ln -s $(command  -v ccache) /usr/local/bin/cc; \
    ln -s $(command  -v ccache) /usr/local/bin/c++
# WORKDIR /riscv-gnu-toolchain
# COPY . .
# RUN git submodule update --init --depth 1 gcc glibc gdb binutils musl newlib llvm
# RUN git submodule update --init uclibc-ng
# COPY build-cache.sh .
# RUN ./configure --prefix=/opt/riscv --with-arch=rv32gc --with-abi=ilp32d
# RUN make uclibc -j $(nproc)
# RUN git remote remove toby && make linux -j20

# # Runtime dependencies
# RUN apt-mark manual \
#   zlib1g