FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/hw-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8765
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

