P01: The EL doesn't show with correct value in the index.jsp
     Message : ${message}
     Counter : ${counter}
A01:
1. in web.xml
tag of <web-app> changed to 
tag of <web-app xmlns="http://java.sun.com/xml/ns/javaee" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	            xsi:schemaLocation="http://java.sun.com/xml/ns/javaee 
	                                http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"
	            version="2.5">, 
(In Servlet 2.5, isELIgnored will be set as false, so you don't have to set  <%@ page isELIgnored="false" %> in each jsp page)
	     
2. in web.xml, below comments removed
<!DOCTYPE web-app PUBLIC
 "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
 "http://java.sun.com/dtd/web-app_2_3.dtd" >
 
(Servlet 2.3 is old and isELIgnored will be auto set as true, 
so in this case, you may have to use <%@ page isELIgnored="false" %> in each jsp page if you want EL value displayed

	     