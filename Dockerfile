# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="tend2dv8@gmail.com"

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Copy jar into image
ARG JAR_FILE
COPY ${JAR_FILE} /app.jar

# Run the jar file
ENTRYPOINT ["/usr/bin/java","-jar","-Dspring.profiles.active=default","/app.jar"]
