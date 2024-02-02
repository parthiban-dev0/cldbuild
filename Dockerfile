FROM openjdk:17-jdk-alpine
ARG JAR_FILE=JAR_FILE_MUST_BE_SPECIFIED_AS_BUILD_ARG
COPY ${JAR_FILE} ./app.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","/app.jar"]