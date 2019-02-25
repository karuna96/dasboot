FROM openjdk:8
ADD target/Das-Boot-App.jar sample.jar
EXPOSE 8085
ENTRYPOINT [ "java", "-jar ", "sample.jar" ]
