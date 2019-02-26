FROM maven:3.6-jdk-8 as build
WORKDIR /app
RUN mvn install

FROM openjdk:8
WORKDIR /app
COPY --from=build /app/target/Das-Boot-App.jar /app
CMD ["java -jar Das-Boot-App.jar"]
