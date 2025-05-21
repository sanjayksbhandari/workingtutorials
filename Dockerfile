# Use a base image with a suitable JRE (Java Runtime Environment)
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/*.jar app.jar

# Expose the port that your Spring Boot application runs on (usually 8080)
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "app.jar"]