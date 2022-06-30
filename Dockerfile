FROM openjdk:8
EXPOSE 8089
Add target/jenkins-automation.jar jenkins-automation.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/jenkins-automation.jar"]