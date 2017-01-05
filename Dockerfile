FROM java:8 

# Install maven
RUN apt-get update  
RUN apt-get install -y maven


# Prepare by downloading dependencies
ADD pom.xml /pom.xml  
RUN ["mvn", "dependency:resolve"]  
RUN ["mvn", "verify"]

# Adding source, compile and package into a fat jar
ADD src /src  
RUN ["mvn", "package"]

EXPOSE 8081  
RUN apt-get install -y tomcat7
ADD /target/factoring.war  /usr/local/tomcat/webapps/



