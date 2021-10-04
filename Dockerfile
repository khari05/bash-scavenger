FROM ubuntu:latest

RUN apt-get update && apt-get install man-db && apt-get clean

COPY dist/motd /etc

RUN useradd player

RUN mkdir /starting-location

COPY dist/open-me.txt /starting-location

RUN mkdir /home/player/next-location

COPY dist/hint.txt /home/player

COPY dist/challenges/execute/* /home/player/next-location

RUN mkdir /.super-secret-folders/linked-folder /.super-secret-folders/hidden-folder && ln -s /.super-secret-folders/hidden-folder /home/player/next-location/.super-secret-folder

COPY dist/ln.txt /.super-secret-folders

COPY dist/execute-me-2 /.super-secret-folders/linked-folder

COPY dist/remaining-challenges/* /.super-secret-folders/

WORKDIR /starting-location

USER player
