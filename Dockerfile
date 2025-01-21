# Use OpenJDK 17 as the base image
FROM openjdk:17

# Define build argument for the JAR file
ARG JAR_FILE=target/*.jar

# Copy the JAR file into the container
COPY ${JAR_FILE} app.jar

# Specify the entry point for the application
ENTRYPOINT ["java", "-jar", "/app.jar"]