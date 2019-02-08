FROM xavierdpt/ubuntu-jdk:latest
COPY ./downloaded /opt
RUN chmod +x /opt/apache-tomcat-9.0.14/bin/*.sh
EXPOSE 8080
CMD ["/opt/apache-tomcat-9.0.14/bin/catalina.sh", "run"]
