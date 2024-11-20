# Use the official image as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the build files to the container
COPY build/libs/*.jar app.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/app/app.jar"]