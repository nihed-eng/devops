# Étape 1 : utiliser l'image Java comme base
FROM openjdk:17-jdk-alpine

# Étape 2 : créer un répertoire pour l'application
WORKDIR /app

# Étape 3 : copier le JAR Maven dans le conteneur
COPY target/timesheet-devops-1.0.jar app.jar

# Étape 4 : exposer le port (par défaut Spring Boot 8080)
EXPOSE 8080

# Étape 5 : exécuter l'application
ENTRYPOINT ["java","-jar","/app/app.jar"]
