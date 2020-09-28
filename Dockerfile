FROM openjdk:8-jre-alpine
WORKDIR /home/alpine
RUN apk update && apk add wget
RUN wget -O amq.tar.gz http://archive.apache.org/dist/activemq/5.16.0/apache-activemq-5.16.0-bin.tar.gz && tar -xvf amq.tar.gz
EXPOSE 8161 61616 5672 61613 1833
CMD ["/bin/sh","apache-activemq-5.16.0/bin/activemq start","console"]
