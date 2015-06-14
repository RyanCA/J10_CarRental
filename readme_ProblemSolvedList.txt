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
    
###3. Where to put javascript, css and image files in maven spring mvc project?

http://www.mkyong.com/spring-mvc/spring-mvc-how-to-include-js-or-css-files-in-a-jsp-page/

1. create resources folder under webapp

2. set mapping in mvc-dispatcher-servlet.xml file
2.1. add contribute in beans tag as below
     xmlns:mvc="http://www.springframework.org/schema/mvc"

2.2. add below into xsi:schemaLocation
     http://www.springframework.org/schema/mvc

2.3 add two lines within beans tag as below
	<mvc:annotation-driven /> 
	<mvc:resources mapping="/resources/**" location="/resources/" />


3. in jsp file, add below codes
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>

        <link href="<c:url value="/resources/bootstrap3.3.4/css/bootstrap.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/bootstrap3.3.4/css/bootstrap-theme.min.css" />" rel="stylesheet">
        <!-- For datetimepicker1 only-->
        <link href="<c:url value="/resources/jquery-ui-1.11.4.custom/jquery-ui.css" />" rel="stylesheet">
        
        
        <script src="<c:url value="/resources/jQuery.1.11.3/js/jquery-1.11.3.min.js" />"></script>
        <script src="<c:url value="/resources/bootstrap3.3.4/js/bootstrap.min.js" />"></script>
        <!-- For datetimepicker1 only-->
        <script src="<c:url value="/resources/jquery-ui-1.11.4.custom/jquery-ui.js" />"></script>
        
###4. app doesn't run in Heroku
heroku ps:scale web=1 #run this command, there is no any result
Solution: 1. Add Procfile in the root folder of the project
          2. git add Procfile
          3. git commit -m "add Procfile to start web application"
          4. git push heroku master
          5. heroku ps
          6. heroku ps:scale web=1
          Scaling dynos... done, now running web at 1:1X.
          7. heroku logs

    

############Technologies want to adopt in this project############
1. Tiles

2. Twitter BootStrap
	http://getbootstrap.com/getting-started/#download
	###Nav Bar
	http://www.w3schools.com/bootstrap/bootstrap_navbar.asp
	###Grid System
	http://www.w3schools.com/bootstrap/bootstrap_grid_system.asp
	###Panel
	http://www.w3schools.com/bootstrap/bootstrap_panels.asp
	
	container vs container-fluid
	

    ###Option 1: Add below code into each page then bootstrap in your web###
	<head>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		<title>Bootstrap Template</title>
	</head>

	     