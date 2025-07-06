FROM tomcat:9.0

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat and rename it to ROOT.war
COPY webapps/ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default port Tomcat uses
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
