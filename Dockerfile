# Use a lightweight JDK 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set environment variable for application home
ENV APP_HOME=/usr/src/app

# Create app directory
WORKDIR $APP_HOME

# Copy the built jar file from Maven target directory to the container
# The wildcard ensures it works regardless of version
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
