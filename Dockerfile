FROM java:7
WORKDIR /home/root/javahelloworld
RUN mkdir -p /home/root/javahelloworld/bin
RUN mkdir /home/root/javahelloworld/src
COPY src /home/root/javahelloworld/src
RUN javac -d bin /home/root/javahelloworld/src/HelloWorld.java
RUN apt-get update
ENV JAVA_HOME2 /usr/bin/java
ENTRYPOINT ["java","-cp", "bin",  "HelloWorld"]
