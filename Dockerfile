# Stage 1 - builder

# Maven Image
FROM maven:3.8.3-openjdk-17 AS builder

# set working directory
WORKDIR /myapp

# copy source code from local to container
COPY . /myapp

# build application and skipo test cases

RUN mvn clean install -DskipTests=true


# Stage 2 - Execute jar files from build

# Use a base image with a suitable JRE (Java Runtime Environment)
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /myapp

# Copy the JAR file into the container
COPY --from=builder /myapp/target/*.jar /myapp/javatutorials.jar

# Expose the port that your Spring Boot application runs on (usually 8080)
EXPOSE 8090

# Define the command to run the application
CMD ["java", "-jar", "javatutorials.jar"]