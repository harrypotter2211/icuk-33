# Use the official Tomcat base image
FROM tomcat:9.0

# Maintainer (optional)
LABEL maintainer="Ma Ping <your-email@example.com>"

# Remove the default ROOT web app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file into Tomcat's webapps directory and rename to ROOT.war
COPY target/my-app.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat's default port
EXPOSE 8080

# Start Tomcat server (default command already handles this)
CMD ["catalina.sh", "run"]
