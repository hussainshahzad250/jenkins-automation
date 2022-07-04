FROM openjdk:8
EXPOSE 8089
Add target/jenkins-automation.jar jenkins-automation.jar
ENTRYPOINT ["java","-jar","/jenkins-automation.jar"]