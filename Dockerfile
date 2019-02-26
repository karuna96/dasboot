FROM openjdk:8
ADD Das-Boot-App.jar dasbootregistry.jar
EXPOSE 8085
ENTRYPOINT [ "java", "-jar ", "dasbootregistry.jar" ]
