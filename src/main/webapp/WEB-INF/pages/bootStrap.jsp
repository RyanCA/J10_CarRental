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
        <!-- 
        <link href="<c:url value="/resources/plandstrap0.0.1/css/plandstrap.css" />" rel="stylesheet">
         -->
        
        
        <script src="<c:url value="/resources/jQuery.1.11.3/js/jquery-1.11.3.min.js" />"></script>
        <script src="<c:url value="/resources/bootstrap3.3.4/js/bootstrap.min.js" />"></script>
        <!-- For using datetimepicker1 only-->
        <script src="<c:url value="/resources/jquery-ui-1.11.4.custom/jquery-ui.js" />"></script>
        
		<title>Car Rental</title>
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
			          <!-- color sequence red color take first two digits, green color take next two digits, blue color take last two digits -->
			          <!-- style="color:#fff;background-color:#505050;" -->
				      <div class="panel-heading" >Rental Period</div>
				      
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
						        <th>Class</th>
						        <th>Description</th>
						        <th>Price</th>
						      </tr>
						    </thead>
						    <tbody>
						    <!-- class of tr or td can be active, success, info, warning and danger, which makes tr or td showing different colors -->
						      <tr class="info">
						        <!-- img-responsive is able to be autosized basd on widow size change -->
						        <td><img class="img-responsive" src=<c:url value="/resources/images/01Economy.png"/> alt="Economy"></td>
						        <td>Economy<br>
						            Kia Rio or similar
						        </td>
						        <td>$33.99/day <br>
						           <a href=<c:url value="/bootstrap1" /> class="btn btn-info" role="button">Select</a>
						        </td>
						      </tr>
						      <tr class="active">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/02Compact.png"/> alt="Compact"></td>
						        <td>Compact<br>
						            Nissan Versa Note or similar
						        </td>
						         <td>$34.99/day <br>
						           <a href="#" class="btn btn-info" role="button">Select</a>
						        </td>
						      </tr>
						      <tr class="info">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/03Intermediate.png"/> alt="Intermediate"></td>
						        <td>Intermediate<br>
						            Toyota Corolla or similar
						        </td>
						        <td>$35.99/day <br>
						           <a href="#" class="btn btn-info" role="button">Select</a>
						        </td>
						      </tr>
						      <tr class="active">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/04Standard.png"/> alt="Standard"></td>
						        <td>Standard<br>
						            Volkswagan Jetta or similar
						        </td>
						        <td>$37.99/day <br>
						           <a href="#" class="btn btn-info" role="button">Select</a>
						        </td>
						      </tr>
						      <tr class="info">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/05Fullsize.png"/> alt="Fullsize"></td>
						        <td>Full Size<br>
						            Ford Fusion or similar
						        </td>
						        <td>$39.99/day <br>
						           <a href="#" class="btn btn-info" role="button">Select</a>
						        </td>
						      </tr>
						      <tr class="active">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/06Premium.png"/> alt="Premium"></td>
						        <td>Premium<br>
						            Chrysler 300 or similar
						        </td>
						        <td>$49.99/day <br>
						           <a href="#" class="btn btn-info" role="button">Select</a>
						        </td>
						      </tr>
						      <tr class="info">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/07Luxury.png"/> alt="Luxury"></td>
						        <td>Luxury<br>
						            Cadillac ATS or similar
						        </td>
						        <td>$80.00/day <br>
						           <a href="#" class="btn btn-info" role="button">Select</a>
						        </td>
						      </tr>
						      <tr class="active">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/08MiniVan.png"/> alt="MiniVan"></td>
						        <td>Mini Van<br>
						            Dodge Grand Caravan or similar
						        </td>
						        <td>$100.00/day <br>
						           <a href="#" class="btn btn-info" role="button">Select</a>
						        </td>
						      </tr>
						      <tr class="info">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/09IntermediateSUV.png"/> alt="IntermediateSUV"></td>
						        <td>Intermediate SUV<br>
						            Toyota Rav4 or similar
						        </td>
						        <td>$68.97/day <br>
						           <a href="#" class="btn btn-info" role="button">Select</a>
						        </td>
						      </tr>
						      <tr class="active">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/10StandardSUV.png"/> alt="StandardSUV"></td>
						        <td>Standard SUV<br>
						            Hyundai Santa Fe or similar
						        </td>
						        <td>$78.97/day <br>
						           <a href="#" class="btn btn-info" role="button">Select</a>
						        </td>
						      </tr>
						      <tr class="info">
						        <td><img class="img-responsive" src=<c:url value="/resources/images/11FullSizeSUV.png"/> alt="FullSizeSUV"></td>
						        <td>Full Size SUV<br>
						            Chevy Tahoe or similar
						        </td>
						        <td>$110.00/day <br>
						           <a href="#" class="btn btn-info" role="button">Select</a>
						        </td>
						      </tr>
						    </tbody>
						  </table>
						  <input type="submit" class="btn btn-info" value="Submit Button">

	                </div><!-- end of panel body -->
			    </div><!-- end of panel -->
			    
		   </form>
		  

		  </div><!-- end of panel group -->
		  
	  </div> <!-- end of container -->
	  
	 
	  
      
      

	
	</body>
</html>