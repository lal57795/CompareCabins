<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

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
    
    <link href="css/ownersCabins.css" rel="stylesheet"/>
	<script src="scripts/jquery-3.2.1.js" type="text/javascript"></script>
	<script src="scripts/ownersCabins.js" type="text/javascript"></script>
	
	 <title>Your Cabins</title>
	
</head>

<body>
    
    <#include "Header.ftl">

    <div class="container">
    <div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="text-center">Your Cabins</h1>
    </div>

    <div class="panel-body">

    <form action="AddCabin" method="post">
        <button name="goToCabin" class="btn center-block">ADD CABIN</button>
    </form><br/><hr><br/>

    <#list Groups as g>

        <div class = "cabinListing" id="${g.getCabin().id}">
        <div class="row">
            
        <div class="col-xs-5 col-sm-5 col-md-5">
            <img src="${g.cabinPicture.filePath}" class="img-rounded img-responsive" alt="thumbnail"></img>
        </div>


        <div class="col-xs-7 col-sm-7 col-md-7">
            
            <h2 class="text-center">${g.getCabin().title}</h2>
            <hr>

            <p>
                <center>
                    ${g.getCabin().description}<br /><br />
                    Address: ${g.getCabin().address}<br />
                    City: ${g.getCabin().city}<br />
                    State: ${g.getCabin().state}<br />
                </center>
            </p>
            
        </div>
            
        </div>
        </div>

        <br />

    </#list>
        
    </div>
    </div>
    </div>
    
</body>
</html>
