FROM ubuntu:16.04
RUN apt-get update -y

#Install packages

RUN apt-get install -y curl telnet ffmpeg

CMD bash