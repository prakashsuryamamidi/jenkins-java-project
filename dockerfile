FROM tomcat:9.0-jdk17-temurin
COPY var/lib/jenkins/workspace/demo-pipeline/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8084
CMD ["catalina.sh", "run"]

