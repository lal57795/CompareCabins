<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Payment Page</title>

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
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title text-center">Please make a payment</h3>
			 			</div>
			 			<div class="panel-body">
			    		   <form action="Pay">
			    		   		<input type="hidden" name="cabinId" value="${cabinId}">
			    		   		<input type="hidden" name="start" value="${start}">
			     				<input type="hidden" name="end" value="${end}">
			    		   		
                            <div class="form-group">
                                <input type="text" name="name" id="name" class="form-control input-sm" placeholder="Name On Card">
                            </div>
                            <div class="form-group">
                                <input type="text" name="card" id="card" class="form-control input-sm" placeholder="Card Number">
                            </div>
			    			<div class="form-group">
			    				<input type="text" name="address" id="address" class="form-control input-sm" placeholder="Billing Address">
			    			</div>
                            <div class="form-group">
			    				<input type="text" name="cvc" id="cvc" class="form-control input-sm" placeholder="CVC">
			    			</div>
                            <div class="form-group">
			    				<input type="text" name="month" id="month" class="form-control input-sm" placeholder="MM">
			    			</div>
                            <div class="form-group">
			    				<input type="text" name="year" id="year" class="form-control input-sm" placeholder="YYYY">
			    			</div>
			    			<input type="submit" value="Pay" class="btn btn-block">
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
</body>
</html>