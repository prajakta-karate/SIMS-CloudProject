# Use an official Tomcat image with OpenJDK 11 for Tomcat 10.1
FROM tomcat:10.1-jdk11-openjdk

# Remove the default web applications provided by Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat's webapps directory
COPY SIMS-Project.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080, which is the default port for Tomcat
EXPOSE 8080

# Start Tomcat server when the container is started
CMD ["catalina.sh", "run"]
