FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Update, upgrade, and install
RUN apt update
RUN apt upgrade -y
RUN apt install -y \
  curl \
  wget \
  python \
  git \
  texlive \
  texlive-lang-german \
  texlive-full \
  latexdiff

# Install pip2
RUN wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
RUN python get-pip.py
RUN rm get-pip.py

# Install Pygments for minted
RUN pip install Pygments

WORKDIR /data
