# Base image Java
FROM openjdk:17-jdk-alpine

# Répertoire de travail
WORKDIR /app

# Copier le jar Maven
COPY target/timesheet-devops-1.0.jar app.jar

# Exposer le port Spring Boot
EXPOSE 8080

# Lancer l'application
ENTRYPOINT ["java","-jar","/app/app.jar"]
