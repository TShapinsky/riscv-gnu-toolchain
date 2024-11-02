FROM debian:bookworm-slim
# FROM ubuntu:22.04
# ENV DEBIAN_FRONTEND=noninteractive
# COPY .github/setup-apt.sh .
# RUN ./setup-apt.sh
RUN set -eux; \
  apt-get update

RUN apt-get install -y --no-install-recommends \
    ca-certificates \
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
    libexpat-dev
    # Multilib build dependencies
    # libmpc-dev

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

WORKDIR /riscv-gnu-toolchain
COPY . .
RUN ./configure --prefix=/opt/riscv --with-arch=rv32gc --with-abi=ilp32d
# RUN make uclibc -j $(nproc)
# RUN git remote remove toby && make linux -j20

# # Runtime dependencies
# RUN apt-mark manual \
#   zlib1g