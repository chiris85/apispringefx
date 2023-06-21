FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file to the container
COPY target/api-0.0.1-SNAPSHOT.jar /app/api.jar

# Expose the port on which the API will run
EXPOSE 8080

# Set the entry point for the container
ENTRYPOINT ["java", "-jar", "/app/api.jar"]