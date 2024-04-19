FROM openjdk:17-alpine

# Set environment variables for database connection
ENV DB_HOST=jdbc:mysql://database-2.cy6y2isjw7ur.eu-west-2.rds.amazonaws.com:3306/wrongmove
ENV    DB_PORT=3306
ENV    DB_NAME=database-2
ENV    DB_USER=admin
ENV    DB_PASSWORD=password

WORKDIR /app

# Volume for temporary files
VOLUME /tmp

# Expose port
EXPOSE 8080

# Add the JAR file from the build context to the container as "app.jar"
COPY java/target/project-0.0.1-SNAPSHOT.jar /app/app.jar

# Entrypoint command to run the Java application
ENTRYPOINT ["java","-jar","/app/app.jar"]
