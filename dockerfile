FROM tomcat:9.0-jdk17-temurin
COPY *.war /usr/local/tomcat/webapps/*.war
EXPOSE 8084
CMD ["catalina.sh", "run"]

