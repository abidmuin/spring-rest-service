# Stage 1: Build using Maven
FROM maven:3.9-eclipse-temurin-21-alpine AS build

LABEL authors="abid.muin"

WORKDIR /app

COPY pom.xml ./

RUN mvn dependency:go-offline -B

COPY src ./src

RUN mvn clean package -DskipTests

# Stage 2: Run the Spring Boot application
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

COPY --from=build /app/target/spring-rest-service-0.0.1-SNAPSHOT.jar /app/spring-rest-service.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "spring-rest-service.jar"]

