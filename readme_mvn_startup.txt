mvn clean
mvn compile
mvn package

######Start the server######
mvn clean install tomcat:run

######Access the website######
http://localhost:8080/J10_CarRental


######New commands learned######
mvn dependency:tree