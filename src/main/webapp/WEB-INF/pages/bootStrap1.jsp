<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           
<html>

	<head>
	
	
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
        <link href="<c:url value="/resources/plandstrap0.0.1/css/plandstrap.css" />" rel="stylesheet">
        
        
        <script src="<c:url value="/resources/jQuery.1.11.3/js/jquery-1.11.3.min.js" />"></script>
        <script src="<c:url value="/resources/bootstrap3.3.4/js/bootstrap.min.js" />"></script>
        <!-- For using datetimepicker1 only-->
        <script src="<c:url value="/resources/jquery-ui-1.11.4.custom/jquery-ui.js" />"></script>
        
		<title>Bootstrap1</title>
	</head>

	<body>


      <nav class="navbar navbar-default">
          <div class="container">
        
	          <div class="navbar-header">
                  <!-- Nav Bar will be appeared as a button on the top right corner when the window size is small -->
	              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
		              <span class="sr-only">Toggle navigation</span>
		              <span class="icon-bar"></span>
		              <span class="icon-bar"></span>
		              <span class="icon-bar"></span>
	              </button>
	              <a class="navbar-brand" href="#">Car Rental</a>
	          </div>
	          
	          <div class="navbar-collapse collapse">
	              <ul class="nav navbar-nav">
	                <li class="active"><a href="/">Home</a></li>
	                <li><a href="#about">About</a></li>
	                <li><a href="#contact">Contact</a></li>
	                <li class="dropdown">
		                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
		                <ul class="dropdown-menu" role="menu">
			                  <li><a href="#">Action</a></li>
			                  <li><a href="#">Another action</a></li>
			                  <li><a href="#">Something else here</a></li>
			                  <li class="divider"></li>
			                  <li class="dropdown-header">Nav header</li>
			                  <li><a href="#">Separated link</a></li>
			                  <li><a href="#">One more separated link</a></li>
		                </ul>
	                </li>
	              </ul>
	            
	              <ul class="nav navbar-nav navbar-right">
			        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			      </ul>
	          </div><!--/.nav-collapse -->

          
          </div><!-- container -->
      </nav>
      

	  
	  <div class="container">
	  
		  <div class="panel-group">
		   <form class="form-inline" role="form">
			    
			
			    <div class="panel panel-default">
			        <div class="panel-heading">Renter's Information</div>
			        <div class="panel-body">
          
						  <table class="table table-hover">
						    <thead>
						      <tr class="">
						        <th>Label</th>
						        <th>Text</th>
						      </tr>
						    </thead>
						    <tbody>
						    <!-- class of tr or td can be active, success, info, warning and danger, which makes tr or td showing different colors -->

						      <tr class="">
						          <td><label for="">First Name *</label></td>
						          <td><input></input><p></td>
						      </tr>
						      
						      <tr class="">
						          <td><label for="">Last Name *</label></td>
						          <td><input></input></td>
						      </tr>
						      
						      <tr class="">
						          <td><label for="">Phone Number *</label></td>
						          <td><input></input></td>
						      </tr>
						      
						      <tr class="">
						          <td><label for="">Credti Card Type *</label></td>
						          <td>  
							          <select class="form-control" id="sel1">
									        <option>Visa</option>
									        <option>Master Card</option>
									        <option>Interac</option>
									        <option>American Express</option>
	                                  </select>
                                  </td>
						          
						         
						      </tr>
						      
						      <tr class="active">
						          <td><label for="">Renter's Email *</label></td>
						          <td><input></input></td>
						          
						          
						      </tr>
						      
						    </tbody>
						  </table>

	                </div><!-- end of panel body -->
			    </div><!-- end of panel -->
			    
		   </form>
		  

		  </div><!-- end of panel group -->
		  
	  </div> <!-- end of container -->
	  
	 
	  
      
      

	
	</body>
</html>