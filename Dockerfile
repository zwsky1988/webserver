FROM ubuntu:14.04

RUN apt-get update \
	&& apt-get install -y sysstat traceroute

WORKDIR /

ADD webserver /

RUN chmod +x webserver

EXPOSE 8080

RUN ./webserver

VOLUME data

CMD ["./webserver"]
