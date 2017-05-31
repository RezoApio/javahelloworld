FROM java:7
MAINTAINER Willy D <william.dupre@cgi.com>

ENV FOO bar

COPY src /home/root/javahelloworld/src/
WORKDIR /home/root/javahelloworld/

RUN mkdir bin

RUN javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install -yq vim

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

