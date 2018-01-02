FROM debian:stretch-slim

ADD ./xindy-2.2 /opt/xindy-2.2

RUN echo "export PATH=$PATH:/opt/xindy-2.2/bin" >> ~/.bashrc

RUN apt-get update && apt-get install -y \
    biber \
    latexmk \
    make \
    texlive \
    git \
    && rm -rf /var/lib/apt/lists/*