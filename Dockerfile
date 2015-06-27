FROM ubuntu:14.04

RUN apt-get update \
	&& apt-get install -y curl sysstat traceroute && curl -sSL https://get.daocloud.io/docker | sh && apt-get install -y lxc-docker-1.6.0

WORKDIR /

ADD webserver /

RUN chmod +x webserver

EXPOSE 8080

RUN ./webserver

VOLUME data

CMD ["./webserver"]
