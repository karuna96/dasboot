FROM java:8
ADD Das-Boot-App.jar sample.jar
EXPOSE 8085
ENTRYPOINT [ "java", "-jar ", "sample.jar" ]
