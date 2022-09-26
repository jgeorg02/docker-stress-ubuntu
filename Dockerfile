FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get install stress

ENTRYPOINT ["/usr/bin/stress"]
