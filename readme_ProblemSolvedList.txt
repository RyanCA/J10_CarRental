############Issues############

###P01: The EL doesn't show with correct value in the index.jsp###
     Message : ${message}
     Counter : ${counter}
A01:
Step 1: in web.xml
tag of <web-app> changed to 
tag of <web-app xmlns="http://java.sun.com/xml/ns/javaee" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	            xsi:schemaLocation="http://java.sun.com/xml/ns/javaee 
	                                http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
	            version="2.5">, 
(In Servlet 2.5, isELIgnored will be set as false, so you don't have to set  <%@ page isELIgnored="false" %> in each jsp page)
	     
Step 2: in web.xml, below comments removed
<!DOCTYPE web-app PUBLIC
 "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
 "http://java.sun.com/dtd/web-app_2_3.dtd" >
 
(Servlet 2.3 is old and isELIgnored will be auto set as true, 
so in this case, you may have to use <%@ page isELIgnored="false" %> in each jsp page if you want EL value displayed



############Knowledge############
###1. Where to define the Servlet Version, and Jsp version in your web application?###
   Pending...
   
###2. How to resolve jar dependency issue in maven pom.xml###
   Pending...
   
Eg: One jar dependant on commons-logging-1.0.4.jar; 
    The other jar dependant on commons-logging-1.1.1.jar.
    
    You need to configure a dependencyManagement section in your [parent] POM. 
    This will coerce artifacts coming as transitive dependencies to be of the specified version.
    http://stackoverflow.com/questions/5278292/dependency-conflicts-on-maven
    

############Technologies want to adopt in this project############
1. Tiles

2. Twitter BootStrap
	http://getbootstrap.com/getting-started/#download
	###Nav Bar
	http://www.w3schools.com/bootstrap/bootstrap_navbar.asp
	###Grid System
	http://www.w3schools.com/bootstrap/bootstrap_grid_system.asp

    ###Option 1: Add below code into each page then bootstrap in your web###
	<head>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<title>Bootstrap Template</title>
	</head>

	     