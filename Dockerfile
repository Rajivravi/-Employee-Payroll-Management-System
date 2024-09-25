# Use an official OpenJDK 17 slim image as a parent image
FROM --platform=linux/amd64 openjdk:17-slim
# Set the working directory
WORKDIR /app
# Copy the application's JAR file to the container
COPY target/Employee-Payroll-Management-System-0.0.1-SNAPSHOT.jar app.jar
# Expose port 8080
EXPOSE 8080
# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]