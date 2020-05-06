# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="tend2dv8@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE

# Add the application's jar to the container
ADD target/${JAR_FILE} target/app.jar

# Run the jar file
ENTRYPOINT ["/usr/bin/java","-jar","-Dspring.profiles.active=default","target/app.jar"]
