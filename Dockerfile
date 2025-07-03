FROM tomcat:9.0

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file
COPY webapps/ROOT.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
