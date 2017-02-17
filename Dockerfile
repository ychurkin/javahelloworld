FROM java:7
MAINTAINER Big Joe <big.joe@email.com>
ENV FOO bar

COPY src /home/root/jhelloworld/src

WORKDIR /home/root/jhelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin",  "HelloWorld"]


