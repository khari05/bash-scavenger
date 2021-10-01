FROM ubuntu:latest

RUN apt-get update && apt-get install man-db && apt-get clean

COPY dist/motd /etc

RUN useradd player

RUN mkdir /starting-location

COPY dist/open-me.txt /starting-location

RUN mkdir /home/player/next-location

COPY dist/hint.txt /home/player

COPY dist/execute-me /home/player/next-location

WORKDIR /starting-location

USER player
