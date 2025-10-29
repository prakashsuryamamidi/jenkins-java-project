# FROM tomcat:9.0-jdk17-temurin
# COPY /var/lib/jenkins/workspace/demo-pipeline/target/*.war /usr/local/tomcat/webapps/
# EXPOSE 8084
# CMD ["catalina.sh", "run"]
# Use official Tomcat base image
FROM tomcat:9-jdk17

# Remove the default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat as ROOT.war
COPY ./target/*.war /usr/local/tomcat/webapps/

WORKDIR /usr/local/tomcat/bin

# Expose application port
EXPOSE 8084

RUN sed -i 's/port="8080"/port="8084"/' /usr/local/tomcat/conf/server.xml

# Run Tomcat
CMD ["catalina.sh", "run"]
