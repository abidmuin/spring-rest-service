# Spring Boot REST Service

A simple RESTful web service built using Spring Boot.

## Project Overview

This project demonstrates a basic Spring Boot application that provides a REST API. It includes a simple `/greeting` endpoint that returns a greeting message.

### Features

- RESTful API with Spring Boot
- Dockerized for easy deployment
- Configurable default greeting message

## Technologies Used

- **Java 21**
- **Spring Boot 3.3.3**
- **Maven 3.9.2**
- **Docker**

## Prerequisites

- Java 21 installed on your machine
- Maven 3.8+ installed
- Docker installed

## How to Run the Project Locally

### 1. Clone the Repository

```shell
git clone https://github.com/your-username/spring-rest-service.git
cd spring-rest-service
```

### 2. Build the Project
```shell
mvn clean package
```

This will compile the project and generate a **.jar** file inside the **target/** directory.

### 3. Run the Application
```shell
mvn spring-boot:run
```
This will start the application on http://localhost:8080.

### 4. Access the REST Endpoint
You can access the greeting endpoint via the following URL:

```shell
http://localhost:8080/greeting
```

You can also provide a name as a query parameter:

```shell
http://localhost:8080/greeting?name=YourName
```

## Docker Setup
This project is Dockerized for easy container deployment.

### 1. Build the Docker Image
To build the Docker image:

```shell
docker build -t spring-rest-service .
```

### 2. Run the Docker Container
To run the application in a Docker container:

```shell
docker run -p 8080:8080 spring-rest-service
```
Or if you want to run in detached mode:

```shell
docker run -d -p 8080:8080 spring-rest-service
```
### 3. Access the Application in Docker
Once the container is running, the application will be accessible at:

```shell
http://localhost:8080/greeting
```

Project Structure
```text
spring-rest-service/
├── src/
│   ├── main/
│   │   ├── java/com/abidmuin/spring_rest_service/
│   │   │   ├── Greeting.java
│   │   │   ├── GreetingController.java
│   │   └── resources/
│   │       └── application.properties
│   └── test/
│       └── java/
├── Dockerfile
├── pom.xml
└── README.md
```

## Testing
You can run tests using Maven:

```shell
mvn test
```

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Author
[Abid Hasan Muin](https://github.com/abidmuin/spring-rest-service/blob/master/Dockerfile)