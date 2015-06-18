<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles"
           uri="http://tiles.apache.org/tags-tiles" %>

<html>

	<head>
	    <title></title>
	    <!-- How to import bootstrap OPTION 1 -->
	    
	    <!-- Latest compiled and minified CSS -->
		<!--  
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
		-->
		
		
		<!-- Optional theme -->
		<!--  
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
		-->
		
		<!-- For using datetimepicker1 only-->
		<!--  
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
		-->
		<!-- Latest compiled and minified JavaScript -->
		<!--  
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		-->
		<!--  
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
		-->
		<!-- For using datetimepicker1 only-->
		<!--  
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        -->
		
        <!-- How to import bootstrap OPTION 2 -->
        
        <link href="<c:url value="/resources/bootstrap3.3.4/css/bootstrap.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/bootstrap3.3.4/css/bootstrap-theme.min.css" />" rel="stylesheet">
        <!-- For using datetimepicker1 only-->
        <link href="<c:url value="/resources/jquery-ui-1.11.4.custom/jquery-ui.css" />" rel="stylesheet">
        <!-- Self made css file -->
        <!-- 
        <link href="<c:url value="/resources/plandstrap0.0.1/css/plandstrap.css" />" rel="stylesheet">
         -->
        
        
        <script src=<c:url value="/resources/jQuery.1.11.3/js/jquery-1.11.3.min.js" /> ></script>
        <script src=<c:url value="/resources/bootstrap3.3.4/js/bootstrap.min.js" /> ></script>
        <!-- For using datetimepicker1 only-->
        <script src=<c:url value="/resources/jquery-ui-1.11.4.custom/jquery-ui.js" /> ></script>
	</head>
	
	<body>
	
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="body" />
		<tiles:insertAttribute name="footer"/>
		 
	</body>
	
</html>