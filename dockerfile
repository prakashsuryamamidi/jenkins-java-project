FROM tomcat:9.0-jdk17-temurin
COPY target/netflix.war /usr/local/tomcat/webapps/netflix.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

