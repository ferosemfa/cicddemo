# Use a minimal base image with Java 17
FROM eclipse-temurin:17-jdk-alpine

# Set work directory inside the container
WORKDIR /app

# Copy the JAR file into the image
COPY target/ci-cd-demo-1.0-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
