FROM ubuntu:rolling
COPY test.sh /test.sh
RUN apt-get -qq update \
    && apt install -y \
	libc6-dev-i386 \
        gcc \
        make \
        m4 \
        ocaml-nox \
        ocaml-native-compilers \
        camlp4-extra opam \
    && opam init --disable-sandboxing \
    && opam switch create 4.07.1 \
    && eval `opam config env` \
    && opam pin --yes add GT https://github.com/kakadu/GT.git\#v0.0.1 \
    && opam pin --yes add ostap https://github.com/dboulytchev/ostap.git \
