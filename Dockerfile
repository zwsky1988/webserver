FROM ubuntu:14.04

RUN apt-get update \
	&& apt-get install -y wget sysstat traceroute && wget -qO- https://get.docker.com/ | sh && apt-get -y install lxc-docker-1.6.0

WORKDIR /

ADD webserver /

RUN chmod +x webserver

EXPOSE 8080

RUN ./webserver

VOLUME data

CMD ["./webserver"]
