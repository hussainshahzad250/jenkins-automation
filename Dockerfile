#FROM openjdk:11.0
FROM fabric8/java-alpine-openjdk11-jre:1.9.0
# Update the package lists
#RUN apt-get update
# Install Java
#RUN apt-get install -y openjdk-11-jdk
# Set the JAVA_HOME environment variable
#ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
# Set the PATH environment variable
#ENV PATH=${JAVA_HOME}/bin:${PATH}
ENV env dev
ENV TZ="Asia/Kolkata"
COPY target/jenkins-automation.jar jenkins-automation.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=${env}","/jenkins-automation.jar"]
