FROM ubuntu:14.04

RUN apt-get update \
	&& apt-get install -y wget vim sysstat curl gcc traceroute git golang 

WORKDIR /

ADD webserver /

RUN chmod +x webserver

EXPOSE 8080

VOLUME data

CMD ["./webserver"]
