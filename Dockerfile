FROM openjdk:8
EXPOSE 8089
Add target/jenkins-automation.jar app.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]