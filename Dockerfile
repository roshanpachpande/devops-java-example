# Use a base image with OpenJDK
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled .jar file from the host to the container
COPY target/devops-java-example-1.0-SNAPSHOT.jar app.jar

# Expose port 8080 to the outside
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]

