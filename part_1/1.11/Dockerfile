FROM openjdk:8

EXPOSE 8080

RUN apt update && apt install -y git

WORKDIR /usr/src/app

RUN git clone https://github.com/docker-hy/material-applications.git

WORKDIR /usr/src/app/material-applications/spring-example-project

RUN ./mvnw package

CMD java -jar ./target/docker-example-1.1.3.jar
