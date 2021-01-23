FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
  python3.9 \ 
  python3-pip \
  pkg-config \
  g++ \
  git \
  sudo \
  cmake \
  vim-common \
  libwebsockets-dev \
  libjson-c-dev \
  libssl-dev \
  sudo \
  systemd \
  openjdk-8-jdk \
  maven \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
EXPOSE 3080
ENTRYPOINT ["python", "app.py"]
