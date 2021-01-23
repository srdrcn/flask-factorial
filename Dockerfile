FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
  python3.8 \ 
  python3-pip \
  git \
  sudo \
  systemd \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
WORKDIR /project
ADD . /project
RUN pip3 install -r requirements.txt
EXPOSE 3080
ENTRYPOINT ["python", "app.py"]
