# Flight Services Application

This project contains a Spring Boot application (Flight Services) and a MySQL database, containerized using Docker. The application uses a MySQL database as its backend, and both services are orchestrated using Docker Compose.

## Prerequisites

- **Docker** and **Docker Compose** should be installed on your system.
- Ensure you have set up the external network `my_service_network` before running Docker Compose. To create it, use:

  ```bash
  docker network create my_service_network
  ```

## Project Structure

- **Dockerfile**: Defines the setup for the Spring Boot application container.
- **docker-compose.yml**: Orchestrates the setup of MySQL and Spring Boot containers.
  
## Configuration Files

### Dockerfile

This file specifies the setup for the Spring Boot application. It uses OpenJDK 17 on Alpine Linux as the base image and adds the Spring Boot JAR file.

```Dockerfile
FROM openjdk:17-alpine
ADD target/flightservices-0.0.1-SNAPSHOT.jar flightservices-0.0.1-SNAPSHOT.jar
ENTRYPOINT [ "java","-jar","flightservices-0.0.1-SNAPSHOT.jar" ]
```

### docker-compose.yml

This file defines two services:

1. **mysql** - Sets up a MySQL container with environment variables for database name, user, and password.
2. **springboot-app** - Deploys the Spring Boot application and connects it to the MySQL database.

The MySQL container's data is stored persistently on a volume named `mysql_data`.

## Instructions

### 1. Build the Spring Boot Application

First, you need to package the Spring Boot application as a JAR file:

```bash
./mvnw clean package
```

This will create the JAR file at `target/flightservices-0.0.1-SNAPSHOT.jar`.

### 2. Build the Docker Image (Optional)

If you want to build the Docker image locally, you can use the following command:

```bash
docker build -t bindisha/flightservicerepo:v1 .
```

Alternatively, if the image is already built and available on Docker Hub, you can skip this step.

### 3. Start the Application with Docker Compose

Run the following command to start both the MySQL and Spring Boot application containers:

```bash
docker-compose up -d
```

The `-d` flag runs the containers in detached mode.

### 4. Accessing the Services

- **Spring Boot Application**: Access it at `http://localhost:9091`.
- **MySQL Database**: Connect using `localhost:3306`.

### Environment Variables

The following environment variables are used in the `docker-compose.yml` file to configure the database connection:

| Variable   | Description                 |
|------------|-----------------------------|
| DB_HOST    | Hostname of the MySQL server|
| DB_PORT    | Port for MySQL              |
| DB_NAME    | Database name               |
| DB_USER    | MySQL user                  |
| DB_PASSWORD| MySQL user password         |

### Stopping the Application

To stop the running containers, use:

```bash
docker-compose down
```

### Managing Data Persistence

The MySQL data is stored in the `mysql_data` volume, which is mounted to `/var/lib/mysql` in the container. This volume ensures that MySQL data persists even if the container is removed or restarted.

### Troubleshooting

- **Network Issues**: Make sure the `my_service_network` Docker network is created before running the setup.
- **Database Connection**: Check if the MySQL container has started before the Spring Boot application. The `depends_on` option helps with this, but there may still be a delay.
