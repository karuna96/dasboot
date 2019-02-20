FROM java:8
VOLUME /var/lib/docker
ADD Das-Boot-App.jar
EXPOSE 8443
ENTRYPOINT [ "java", "-jar ", "Das-Boot-App.jar" ]
