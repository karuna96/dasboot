FROM openjdk:8
RUN \
  apt-get install software-properties-common
  apt-add-repository universe
  apt-get update
  apt-get install -y maven
  mvn clean package
ADD target/Das-Boot-App.jar dasbootregistry.jar
EXPOSE 8085
ENTRYPOINT [ "java", "-jar ", "dasbootregistry.jar" ]
