# #
# # Build stage
# #
# FROM maven:3.8.6-openjdk-11 as build
# WORKDIR ~/app
# COPY . . 
# RUN mvn clean install


# Package stage
#
FROM openjdk:11.0.16-jre
WORKDIR ~/app
COPY ./target/FirstHelloWorldJavaMaven-1.0-SNAPSHOT.jar /usr/local/lib/FirstHelloWorldJavaMaven.jar
ENTRYPOINT ["java","-jar","/usr/local/lib/FirstHelloWorldJavaMaven.jar"]