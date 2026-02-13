
# Exemple pour une application Java Spring Boot
FROM openjdk:17-jdk-alpine
VOLUME /tmp
COPY target/timesheet-devops-1.0.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
