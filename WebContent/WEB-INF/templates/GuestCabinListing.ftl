<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>${Group.getCabin().title}</title>

    <!-- Bootstrap -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<#include "Header.ftl">
        <div class="container">
        	<div class="panel panel-default">
        		<div class="panel-heading">
        			<div class="row">
        				<div class="col-xs-6 col-sm-6 col-md-6">
			    			<h1 class="text-left">${Group.getCabin().title}</h1>
			    		</div>
			    		<div class="col-xs-6 col-sm-6 col-md-6">
			    			<form action="RentCabin?cabinId=${Group.getCabin().id}" method="post">
			  					<button name="RentCabin" class="btn btn-block">Rent!</button>
		      				</form>
			    		</div>
			    	</div>
			 	</div>
             <div class="panel-body">
             
        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 center-block text-center">
             
             
        <#if CPCheck != "null">
            
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
            <div class="item active">
                <img src="${Group.getCabinPicture().filePath}" class="img-rounded img-responsive" alt="thumbnail">
            </div>
                
            <#list Group.cabinPictureList as cp>
                
                <div class="item">
                <img src="${cp.filePath}" class="img-rounded img-responsive" alt="thumbnail">
                </div>
                
            </#list>
                
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
            </a>
                
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
            </a>
            </div>

        <#else>
            
            <img src="http://placehold.it/600x400" class="img-rounded img-responsive" alt="thumbnail">

        </#if>
		
		
		
        </div>
        </div>
            
        
        <div class="row">
        <div class="col-xs-6 col-sm-6 col-md-6">
        <h1 class="text-center">About the cabin</h1>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-6">
        <h1 class="text-center">Features of the cabin</h1>
        </div>
        </div>
        <hr>
        <div class="row">
        <div class="col-xs-6 col-sm-6 col-md-6">
            <p class="text-center">${Group.getCabin().description}</p>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-6">
        <#if FeaturesCheck != "null">
                <#list Group.featureList as f>
                    <p class="text-center">${f.featureString}<p>
	            </#list>
        </#if>
        </div>
        </div>
        <hr>
        <div class="row">
        <div class="col-xs-6 col-sm-6 col-md-6">
        <h1 class="text-center">Occupancy</h1>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-6">
        <h1 class="text-center">Amenities of the cabin</h1>
        </div>
        </div>
        <hr>
        <div class="row">
        <div class="col-xs-3 col-sm-3 col-md-3">

            <p class="text-right">
                Bedroom(s):<br/> 
                Bathrooms:<br/> 
                Max Occupancy:</br>
            </p>

        </div>
        <div class="col-xs-3 col-sm-3 col-md-3">

            <p class="text-left">
                ${Group.getCabin().bedroomCount}<br/> 
                ${Group.getCabin().bathCount}<br/> 
                ${Group.getCabin().maxOccupancy}</br>
            </p>

        </div>
        <div class="col-xs-6 col-sm-6 col-md-6">
        <#if AmenitiesCheck != "null">
        
	        	<p class="text-center">
	        		<#if Group.getAmenities().hasLake == true>
	        		<strong>Lake :</strong> Yes!
	        		</#if>
	        		<#if Group.getAmenities().hasRiver == true>
	        		<strong>River :</strong> Yes!
	        		</#if>
	        		<#if Group.getAmenities().hasPool == true>
	        		<strong>Pool :</strong> Yes!
	        		</#if>
	        		<#if Group.getAmenities().hasHotTub == true>
	        		<strong>Hot Tub :</strong> Yes!
	        		</#if>
	        		<#if Group.getAmenities().hasWifi == true>
	        		<strong>WiFi :</strong> Yes!
	        		</#if>
	        		<#if Group.getAmenities().hasAirConditioning == true>
	        		<strong>Air Conditiong :</strong> Yes!
	        		</#if>
	        		<#if Group.getAmenities().hasWasherDryer == true>
	        		<strong>Washer Dryer :</strong> Yes!
	        		</#if>
	        		<#if Group.getAmenities().allowsPets == true>
	        		<strong>Do we allow pets? :</strong> Yes!
	        		</#if>
	        		<#if Group.getAmenities().allowsSmoking == true>
	        		<strong>Do we allow smoking? :</strong> Yes!
	        		</#if>
	        	</p>   
        </#if>
        
        </div>
        </div>
        <hr>
        
        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
        <h1 class="text-center">Reviews</h1>
        </div>
        </div>
        <hr>
        <div class="col-xs-12 col-sm-12 col-md-12">
        <#if ReviewsCheck != "null">
        
	        <div class="section">
	        	
	        		<#list Group.reviewList as r>
	            		<div class="row">
        				<div class="col-xs-4 col-sm-4 col-md-4">
        				<h3 class="text-left">${r.title}</h3><br />
	            		</div>
	            		<div class="col-xs-4 col-sm-4 col-md-4">
	            		</div>
	            		<div class="col-xs-4 col-sm-4 col-md-4">
	            		<h3 class="text-right">Number of Stars: ${r.numStars}</h3><br />
	            		</div>
	            		</div>
	            		<div class="row">
	            		<div class="col-xs-12 col-sm-12 col-md-12">
	            		<h4 class="text-center">${r.description}</h4> <br />
	            		</div>
	            		</div>
	            		<hr>
	            
	          	   </#list>
	        	
	        	
	        </div>
	    	<br />
    	
    	</#if>
    	</div>
    </div>
    </div>
    </div>
    </div>
</body>
</html>
