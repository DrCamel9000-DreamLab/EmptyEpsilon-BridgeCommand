FROM --platform=linux/amd64 mcr.microsoft.com/devcontainers/cpp

# Copied from https://github.com/aequitas/empty-epsilon-docker/blob/master/Dockerfile
RUN apt-get update
RUN apt-get install -yqq git build-essential libx11-dev cmake \
  libxrandr-dev mesa-common-dev libglu1-mesa-dev \
  libudev-dev libglew-dev libjpeg-dev libfreetype6-dev \
  libopenal-dev libsndfile1-dev libxcb1-dev \
  libxcb-image0-dev libsfml-dev \
  python3-minimal mingw-w64 ninja-build p7zip-full zip unzip

RUN git clone https://github.com/daid/SeriousProton.git