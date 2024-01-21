FROM --platform=linux/amd64 mcr.microsoft.com/devcontainers/cpp:ubuntu-18.04

# Copied from https://github.com/aequitas/empty-epsilon-docker/blob/master/Dockerfile
RUN apt-get update
RUN apt-get install -yqq git build-essential libx11-dev cmake \
  libxrandr-dev mesa-common-dev libglu1-mesa-dev \
  libudev-dev libglew-dev libjpeg-dev libfreetype6-dev \
  libopenal-dev libsndfile1-dev libxcb1-dev \
  libxcb-image0-dev libsfml-dev \
  python3-minimal mingw-w64 ninja-build p7zip-full zip unzip wget

#fix build error for the drmingw toolchain
RUN sudo apt purge -y python2.7-minimal
RUN sudo rm -f /usr/bin/python
RUN sudo ln -sfn /usr/bin/python3.6 /usr/bin/python
RUN alias python='python3.6'

RUN git clone https://github.com/daid/SeriousProton.git
WORKDIR /SeriousProton
RUN git reset --hard b068a01550d11ddeb57b9437eb193361f24458c6
RUN chown -R 1000:1000 /SeriousProton
WORKDIR /