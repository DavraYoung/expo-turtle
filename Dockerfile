FROM node:12
RUN apt update -y
RUN apt install openjdk-8-jdk -y
RUN apt install sudo -y
RUN sudo npm install -g turtle-cli --unsafe-perm
RUN turtle setup:android
