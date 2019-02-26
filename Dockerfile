FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/karuna96/dasboot.git

FROM maven:3.6-jdk-8 as build
WORKDIR /app
COPY --from=clone /app/dasboot /app
RUN mvn install

FROM openjdk:8
WORKDIR /app
COPY --from=build /app/target/Das-Boot-App.jar /app
CMD ["java -jar Das-Boot-App.jar"]
