FROM ubuntu:17.04

RUN mkdir -p /usr/src/musicbot

WORKDIR /usr/src/musicbot

COPY . .

RUN apt-get update && \
    apt-get install python3 \
    python3-pip \
    libopus0 \
    ffmpeg

VOLUME /usr/src/musicbot/config

CMD ["python3", "run.py"]