# Expo self-hosted CI 

This article will show how to setup self-hosted expo builder.
It is intended for React Native Expo developers, who wish to speed up their builds.

### Requirements
- [virtualization support](https://en.wikipedia.org/wiki/Virtualization)
- [docker](https://www.docker.com/get-started)
- [docker-compose](https://docs.docker.com/compose/)

More info about Turtle cli can be found in [Expo Docs](https://docs.expo.io/distribution/turtle-cli/)

### Steps
-   Create ./Dockerfile
-   Insert this content: 
    ```dockerfile
    FROM node:12
    RUN apt update -y
    RUN apt install openjdk-8-jdk -y
    RUN apt install sudo -y
    RUN npm --global config set user root
    RUN sudo npm install -g turtle-cli --unsafe-perm
    
    RUN turtle setup:android
    ```
-   Run 
    ```shell
    docker build --tag my-turtle:1.0 . 
    ```
