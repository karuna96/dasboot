FROM java:8
VOLUME /var/lib/docker
ADD Das-Boot-App.jar sample.jar
EXPOSE 8085
ENTRYPOINT [ "java", "-jar ", "sample.jar" ]
