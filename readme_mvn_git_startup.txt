1. How to create a mvn WEB project and push to github

1.1 #Move to the right path
cd C:\_SoftwareDev\eclipse_projects

1.2 #Create maven project
###**********###
mvn archetype:generate -DgroupId=com.pland -DartifactId=J10_CarRental -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false

1.3 #Cover maven web project to eclipse web project
    #-Dwtpversion=2.0 tells Maven to convert the project into an Eclipse web project (WAR), not the default Java project (JAR)
###**********###
cd J10_CarRental
mvn eclipse:eclipse -Dwtpversion=2.0

1.4 #Import the project from eclipse

1.5 #Modify pom.xml file and add the dependecies you want in your project such as spring...
    #For details, refer to http://www.mkyong.com/maven/how-to-create-a-web-application-project-with-maven/
...

1.6 #access below url
###**********###
http://localhost:8080/J10_CarRental/

1.7 #To clean up all artifacts
mvn clean

1.8 #add it to git hub
cd C:\_SoftwareDev\eclipse_projects
git init J10_CarRental
cd .\J10_CarRental
git add .
git status
git commit -m "Initialization commit batch"

#If there is no repository on Github for your source, then you need do the following step
#1.8.1 create a repo on github through github web UI
#1.8.2 copy the url of new repo and use command below to associate local source to it
#git remote add origin https://github.com/RyanCA/J10_CarRental.git
#git remote -v 
#following is the result of above git remote command
origin  https://github.com/RyanCA/J10_CarRental.git (fetch)
origin  https://github.com/RyanCA/J10_CarRental.git (push)

git push origin master

###Note###
1. Once the repo created on Github, the name can't changed but the project name on eclipse can be changed.
For this one, the project name is called J01_Spring, later on I changed it to J10_CarRental to keep it consistent with repo name
