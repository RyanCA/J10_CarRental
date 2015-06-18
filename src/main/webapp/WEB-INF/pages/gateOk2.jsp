<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           
<%@ taglib prefix="tiles"
           uri="http://tiles.apache.org/tags-tiles" %>
           
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
 
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
 
      </tiles:putAttribute>
</tiles:insertDefinition>