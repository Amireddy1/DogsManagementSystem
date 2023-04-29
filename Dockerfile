FROM maven:3.8.2-jdk-11 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests
FROM openjdk:11-jdk-slim
COPY --from=build target/DogsManagementSystem-1-0.0.1-SNAPSHOT.jar DogsManagementSystem-1.jar
CMD ["java", "-jar", "DogsManagementSystem-1.jar"]
