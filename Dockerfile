# Use Amazon Corretto 21 with platform specification
FROM amazoncorretto:21

WORKDIR /app

# Copy the JAR file from the host to the container
COPY build/libs/AuthService-0.0.1-SNAPSHOT.jar /app/AuthService-0.0.1-SNAPSHOT.jar

# Expose the port that your Java service listens on
EXPOSE 9898

# Set the entry point for the container
ENTRYPOINT ["java", "-jar", "/app/AuthService-0.0.1-SNAPSHOT.jar"]