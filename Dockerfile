FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/hello-devops-1.0.jar app.jar
CMD ["java", "-jar", "app.jar"]

