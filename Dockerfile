FROM openjdk:11.0.1-jre-slim-stretch
LABEL author="b310m0r"

ARG JAR=target/spring-petclinic-2.6.0-SNAPSHOT.jar
COPY $JAR /app.jar
EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]
