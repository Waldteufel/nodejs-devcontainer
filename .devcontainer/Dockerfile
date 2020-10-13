FROM buildpack-deps:20.04

COPY pkg/*.list /etc/apt/sources.list.d/
COPY pkg/*.asc /etc/apt/trusted.gpg.d/

COPY setup.sh /
RUN bash /setup.sh