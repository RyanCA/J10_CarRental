1. How to create mvn WEB project

1.1 #Move to the right path
cd C:\_SoftwareDev\eclipse_projects

1.2 #Create maven project
###**********###
mvn archetype:generate -DgroupId=com.pland -DartifactId=J01_Spring -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false

1.3 #Cover maven web project to eclipse web project
    #-Dwtpversion=2.0 tells Maven to convert the project into an Eclipse web project (WAR), not the default Java project (JAR)
###**********###
cd J01_Spring
mvn eclipse:eclipse -Dwtpversion=2.0

1.4 #Import the project from eclipse

1.5 #Modify pom.xml file and add the dependecies you want in your project such as spring...
    #For details, refer to http://www.mkyong.com/maven/how-to-create-a-web-application-project-with-maven/
...

1.6 #access below url
###**********###
http://localhost:8080/J01_Spring/

1.7 #To clean up all artifacts
mvn clean

1.8 #add it to git hub
cd C:\_SoftwareDev\eclipse_projects
git init J01_Spring

