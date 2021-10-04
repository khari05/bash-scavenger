FROM ubuntu:latest

RUN apt-get update && apt-get install -yq man-db && apt-get clean

COPY ./dist/motd /etc

RUN useradd player

RUN mkdir /starting-location /home/player /home/player/next-location

COPY ./dist/open-me.txt /starting-location

COPY ./dist/home/* /home/player

COPY ./dist/challenges/execute/* /home/player/next-location

RUN mkdir /.super-secret-folders /.super-secret-folders/hidden-folder && ln -s /.super-secret-folders/hidden-folder /home/player/next-location/.super-secret-folder

COPY ./dist/ls.txt /.super-secret-folders/hidden-folder

COPY ./dist/ln.txt /.super-secret-folders

COPY ./dist/challenges/remaining-challenges/* /.super-secret-folders/

WORKDIR /starting-location

USER player
