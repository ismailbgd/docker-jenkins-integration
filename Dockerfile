FROM openjdk:8u111-jdk-alpine
VOLUME /tmp
ADD /target/docker-jenkins-integration-sample.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]