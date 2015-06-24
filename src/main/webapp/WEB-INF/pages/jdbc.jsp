<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           
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
							    
							    <!-- vehicleClassList is defined in controller -->
							    <c:forEach items="${vehicleClassList}" var="vehicleClass" varStatus="loopCounter" >
							        <c:choose>
					                    <c:when test="${loopCounter.count % 2 == 0}">
					                        <tr class="info">
					                    </c:when>
					                    <c:otherwise>
					                        <tr class="active">
					                    </c:otherwise>
					                </c:choose>
							        <!-- img-responsive is able to be autosized basd on widow size change -->
								        <td><img class="img-responsive" src=<c:url value="/resources/images/01Economy.png"/> alt="Economy"></td>
								        <td>${vehicleClass.description}</td>
								        <td>${vehicleClass.dailyprice}/day <br>
								           <a href=<c:url value="/bootstrap1" /> class="btn btn-info" role="button">Select</a>
								        </td>
								      </tr>
								</c:forEach>
	
							  
	
		                </div><!-- end of panel body -->

				    </div><!-- end of panel -->
				    
				   
				    
			   </form>
		  

		  </div><!-- end of panel group -->
		  
	  </div> <!-- end of container -->
