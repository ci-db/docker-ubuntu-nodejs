FROM ubuntu:22.04
ARG VERSION

# Node installation
RUN apt-get update
RUN apt-get -y install curl bash
RUN curl -fsSL https://deb.nodesource.com/setup_${VERSION}.x | bash - 
RUN apt-get -y install nodejs 


RUN apt-get clean autoclean
RUN apt-get autoremove --yes
RUN rm -rf /var/lib/{apt,dpkg,cache,log}/

