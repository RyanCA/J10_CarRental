<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           
<html>

	<head>
	
	    <!-- Latest compiled and minified CSS -->
		<!--  
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
		-->
		
		
		<!-- Optional theme -->
		<!--  
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
		-->
		
		<!-- For datetimepicker1 only-->
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
		<!-- For datetimepicker1 only-->
		<!--  
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        -->
		
        
        <link href="<c:url value="/resources/bootstrap3.3.4/css/bootstrap.min.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/bootstrap3.3.4/css/bootstrap-theme.min.css" />" rel="stylesheet">
        <!-- For datetimepicker1 only-->
        <link href="<c:url value="/resources/jquery-ui-1.11.4.custom/jquery-ui.css" />" rel="stylesheet">
        
        
        <script src="<c:url value="/resources/jQuery.1.11.3/js/jquery-1.11.3.min.js" />"></script>
        <script src="<c:url value="/resources/bootstrap3.3.4/js/bootstrap.min.js" />"></script>
        <!-- For datetimepicker1 only-->
        <script src="<c:url value="/resources/jquery-ui-1.11.4.custom/jquery-ui.js" />"></script>
        
		<title>Bootstrap Template</title>
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
      
      <!-- Comments below code. The appearance is not good here. But it is useful tech -->
      <!-- Multiply Device support -->
      <!-- col-xs- for PHONE col-sm- for TABLET	col-md- for DESKTOP	col-lg- for LARGER DESKTOP -->
      <!-- Just show panel stacked up in small device and  panels in one row in desktop device-->
      <!-- 
      <div class="container">
		  <div class="row">

		      <div class="col-xs-12 col-lg-6">
		          <div class="panel panel-default">
				      <div class="panel-heading">Date and Time</div>
					  <div class="panel-body">Panel Content</div>
					  <div class="panel-footer">Panel Footer</div>
				  </div>
		      </div>
		      
		      <div class="col-xs-12 col-lg-6">
		          <div class="panel panel-default">
				      <div class="panel-heading">Vehicle Class</div>
					  <div class="panel-body">Panel Content</div>
					  <div class="panel-footer">Panel Footer</div>
				  </div>
		      </div>
		  </div>
	  </div>
	  -->
	  
	  <div class="container">
	  
		  <div class="panel-group">
		   <form class="form-inline" role="form">
			    <div class="panel panel-default">
				      <div class="panel-heading">Rental Period</div>
				      
				      <div class="panel-body">
						  <div id="datetimepicker1" class="input-append col-xs-12 col-sm-6 col-md-6">
						    <label for="pickupdate">Pickup Date</label>
						    <input data-format="yyyy-MM-dd" type="text"></input>
						    <span class="glyphicon glyphicon-calendar"></span>
						  </div>
	
						  <script type="text/javascript">
						      $(function(){
							      $('#datetimepicker1').datepicker({
							          language: 'en'
							      });
						      });
						  </script>
						  
						  <div id="datetimepicker2" class="input-append col-xs-12 col-sm-6 col-md-6">
						    <label for="returndate">Return Date</label>
						    <input data-format="yyyy-MM-dd" type="text"></input>
						    <span class="glyphicon glyphicon-calendar"></span>
						  </div>
	
						  <script type="text/javascript">
						      $(function(){
							      $('#datetimepicker2').datepicker({
							          language: 'en'
							      });
						      });
						  </script>
						  

	
	                  </div><!-- end of panel body -->
			    </div><!-- end of panel -->
			
			    <div class="panel panel-default">
			        <div class="panel-heading">Vehicle Class</div>
			        <div class="panel-body">
          
						  <table class="table table-hover">
						    <thead>
						      <tr class="">
						        <th>Vehicle Class</th>
						        <th>Description</th>
						        <th>Price</th>
						      </tr>
						    </thead>
						    <tbody>
						    <!-- class of tr or td can be active, success, info, warning and danger, which makes tr or td showing different colors -->
						      <tr class="info">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/01Economy.png"/> alt="Economy"></td>
						        <td>Kia Rio or similar</td>
						        <td>$ 33.99 CAD / day</td>
						      </tr>
						      <tr class="active">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/02Compact.png"/> alt="Economy"></td>
						        <td>Nissan Versa Note or similar</td>
						        <td>$ 34.99 CAD / day</td>
						      </tr>
						      <tr class="info">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/03Intermediate.png"/> alt="Economy"></td>
						        <td>Toyota Corolla or similar</td>
						        <td>$ 35.99 CAD / day </td>
						      </tr>
						      <tr class="active">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/04Standard.png"/> alt="Economy"></td>
						        <td>Volkswagan Jetta or similar</td>
						        <td>$ 37.99 CAD / day</td>
						      </tr>
						      <tr class="info">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/05Fullsize.png"/> alt="Economy"></td>
						        <td>Ford Fusion or similar</td>
						        <td>$ 39.99 CAD / day </td>
						      </tr>
						      <tr class="active">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/06Premium.png"/> alt="Economy"></td>
						        <td>Chrysler 300 or similar</td>
						        <td>$ 49.99 CAD / day</td>
						      </tr>
						      <tr class="info">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/07Luxury.png"/> alt="Economy"></td>
						        <td>Cadillac ATS or similar</td>
						        <td>$ 80.00 CAD / day </td>
						      </tr>
						      <tr class="active">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/08MiniVan.png"/> alt="Economy"></td>
						        <td>Dodge Grand Caravan or similar</td>
						        <td>$ 100.00 CAD / day</td>
						      </tr>
						      <tr class="info">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/09IntermediateSUV.png"/> alt="Economy"></td>
						        <td>Toyota Rav4 or similar</td>
						        <td>$ 68.97 CAD / day </td>
						      </tr>
						      <tr class="active">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/10StandardSUV.png"/> alt="Economy"></td>
						        <td>Hyundai Santa Fe or similar</td>
						        <td>$ 78.97 CAD / day </td>
						      </tr>
						      <tr class="info">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/11FullSizeSUV.png"/> alt="Economy"></td>
						        <td>Chevy Tahoe or similar</td>
						        <td>$ 110.00 CAD / day </td>
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