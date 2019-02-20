FROM java:8
VOLUME /tmp
ADD Das-Boot-App.jar
EXPOSE 8443
ENTRYPOINT [ "java", "-jar ", "Das-Boot-App.jar" ]
