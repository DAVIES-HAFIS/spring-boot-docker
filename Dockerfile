FROM openjdk:8
# #Required for starting application up.
# RUN apk update && apk add /bin/sh
# RUN mkdir -p /opt/app
# ENV PROJECT_HOME /opt/app
# COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo.jar
# WORKDIR $PROJECT_HOME
# CMD ["java" ,"-jar","./spring-boot-mongo.jar"]
EXPOSE 8080
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
