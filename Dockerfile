FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get install stress

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
