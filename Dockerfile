FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRPONIT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]